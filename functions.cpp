/**************************************************************************
* Project:  OpenCPN
* Purpose:  JavaScript Plugin
* Author:   Tony Voss 16/05/2020
*
* Copyright Ⓒ 2021 by Tony Voss
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License, under which
* you must including a copy of these terms in all copies
* https://www.gnu.org/licenses/gpl-3.0.en.html
***************************************************************************
*/

#include <wx/wx.h>
#include <wx/wxprec.h>
#include "duktape.h"
#include "JavaScriptgui_impl.h"

extern JavaScript_pi *pJavaScript_pi;

void fatal_error_handler(void *udata, const char *msg) {
     // Provide for handling fatal error while running duktape
     (void) udata;  /* ignored in this case, silence warning */

     /* Note that 'msg' may be NULL. */
     wxMessageBox((msg ? msg : "(no message)"), "Fatal JavaScript error");
     fprintf(stderr, "Causing intentional segfault...\n");
     fflush(stderr);
     *((volatile unsigned int *) 0) = (unsigned int) 0xdeadbeefUL;
     abort();
 }

 wxString JScleanString(wxString given){ // cleans script string of unacceptable characters
     const wxString leftQuote    { _("\u201C")};
     const wxString rightQuote   {_("\u201D")};
 //  const wxString quote        {_("\u0022")};
     const wxString quote        {_("\"")};
     const wxString accute       {_("\u00B4")};
     const wxString rightSquote  {_("\u2019")};    // right single quote
     const wxString leftSquote  {_("\u2018")};    // right single quote
 //  const wxString apostrophe   {_("\u0027")};
     const wxString apostrophe   {_("\'")};
     const wxString ordinal      {_("\u00BA")};  // masculine ordinal indicator - like degree
     const wxString degree       {_("\u00B0")};
 #ifndef __WXMSW__   // Don't try this one on Windows
     const wxString prime        {_("\u2032")};
     given.Replace(prime, apostrophe, true);
 #endif  // __WXMSW__
     given.Replace(leftQuote, quote, true);
     given.Replace(rightQuote, quote, true);
     given.Replace(accute, apostrophe, true);
     given.Replace(rightSquote, apostrophe, true);
     given.Replace(leftSquote, apostrophe, true);
     given.Replace(ordinal, degree, true);
     return (given);
     }

 // This function only needed with Windose
 #ifdef __WXMSW__
 wxString JScleanOutput(wxString given){ // clean unacceptable characters in output
     // As far as we know this only occurs with º symbol on Windows
     const wxString A_stringDeg{ _("\u00C2\u00b0")};    // Âº
     const wxString A_stringOrd{ _("\u00C2\u00ba")};    // Â ordinal
     given.Replace(A_stringDeg, _("\u00b0"), true);
     return (given);
     }
 #endif

 wxString getStringFromDuk(duk_context *ctx){
     // gets a string safely from top of duk stack and fixes º-symbol for Windose
     wxString string = wxString(duk_to_string(ctx, -1));
 #ifdef __WXMSW__
     const wxString A_stringDeg{ _("\u00C2\u00b0")};    // Âº
     string.Replace(A_stringDeg, _("\u00b0"), true);
 #endif
     return string;
     }

wxString ptrToString(Console* address){
    // format pointer to string
    if (address == nullptr) return _("nullptr");
    return wxString::Format(_("%#012x"), address);
}

Console* pConsoleBeingTimed {nullptr};  // no other way of finding which console - only one at a time?

duk_bool_t JSduk_timeout_check(void *udata) {
    (void) udata;  /* not needed */
    if (pConsoleBeingTimed == nullptr) return 0; // nothing being timed
    
#ifdef TIMEOUT_DUMP    // for diagnostics
        wxString buffer;
#if IN_HARNESS
        fprintf(stderr, "exec timeout check %ld: now=%lld, allocate=%ld, end=%lld, left=%lld\n",
                (long) pJS_control.m_timeout_check_counter, wxGetUTCTimeMillis(), pJS_control.m_time_to_allocate, pJS_control.m_pcall_endtime, pJS_control.m_pcall_endtime-wxGetUTCTimeMillis());
        fflush(stderr);
#else
        buffer.Printf("exec timeout check %ld: backingOut=%s, now=%lld, allocate=%ld, end=%lld, left=%lld\n",
                      (long) pJS_control.m_timeout_check_counter, pJS_control.m_backingOut?"true":"false", wxGetUTCTimeMillis(), pJS_control.m_time_to_allocate, pJS_control.m_pcall_endtime, pJS_control.m_pcall_endtime-wxGetUTCTimeMillis());
        JS_control.m_pJSconsole->m_Output->AppendText(buffer);
#endif // IN_HARNESS
        }
#endif   // TIMEOUT_DUMP

    if (pConsoleBeingTimed->m_pcall_endtime == 0) return(0); // we are not timing at this moment
    pConsoleBeingTimed->m_timeout_check_counter++;
    if (wxGetUTCTimeMillis() > pConsoleBeingTimed->m_pcall_endtime) {
        if (!pConsoleBeingTimed->m_backingOut){ // just starting to back out
            pConsoleBeingTimed->m_backingOut = true; // so we do not clear more than once
            pConsoleBeingTimed->m_result = wxEmptyString;    // supress result
            }
        return 1;
    }
    return 0;
}

wxPoint checkPointOnScreen(wxPoint point){ // fix a point to actually be on the screen
    wxPoint defaultPosition = wxPoint(wxDefaultPosition);
    
    if ((point.x < 0 || point.x > pJavaScript_pi->m_display_width)) point.x = defaultPosition.x;
    if ((point.y < 0 || point.y > pJavaScript_pi->m_display_height)) point.y = defaultPosition.y;
    return point;
    }

Console *findConsoleByCtx(duk_context *ctx){
    // given a duktape context, return pointer to the console
    // for now we only have one console
    void throwErrorByCtx(duk_context *ctx, wxString message);
    Console *m_pConsole;
    
    for (m_pConsole = pJavaScript_pi->mpFirstConsole; m_pConsole != nullptr; m_pConsole = m_pConsole->mpNextConsole){
        if (m_pConsole->mpCtx == ctx) return m_pConsole;
        }
    // failed to match - emit an error message to first console
    throwErrorByCtx(ctx, _("findConsoleByCtx logic error - failed to match ctx"));
    return m_pConsole;  // This to keep compiler happy
}

void throwErrorByCtx(duk_context *ctx, wxString message){ // given ctx, throw error message
    Console *pConsole = findConsoleByCtx(ctx);
    pConsole->throw_error(ctx, message);
    }

#include "wx/tokenzr.h"
wxString extractFunctionName(duk_context *ctx, duk_idx_t idx){
    // extract function name from call on stack
    // This does not work if in method in class not substantiated, so is here
    
    wxStringTokenizer tokens( wxString(duk_to_string(ctx, idx)), _(" ("));
    if (tokens.GetNextToken() != "function") {
        throwErrorByCtx(ctx, "on.. error: must supply function name");
        }
    return (tokens.GetNextToken());
    }

#if TRACE_TO_WINDOW
wxWindow *traceWindow;
wxTextCtrl *traceTextCtrl {nullptr};
void windowTrace(int level, wxString text){
    // implements tracing to a separate window
    if (!traceTextCtrl){
        // the first time to trace
        int traceWindowWidth {240};
        wxPoint position;
        position.y = 100;
        position.x = pJavaScript_pi->m_display_width-traceWindowWidth;
        traceWindow = new wxDialog(pJavaScript_pi->m_parent_window, wxID_ANY,_("JavaScript plugin trace"), position, wxSize(traceWindowWidth, 600), wxDEFAULT_FRAME_STYLE | wxSTAY_ON_TOP);
        traceTextCtrl = new wxTextCtrl(traceWindow, wxID_NEW,
                              wxEmptyString, wxDefaultPosition, wxSize(240, 100),
                              wxTE_MULTILINE);
        traceWindow->Show();
        }
    traceTextCtrl->AppendText(text + "\n");
    traceWindow->Raise();
    return;
    }
#endif  // TRACE_TO_WINDOW

wxFileName resolveFileName(Console* pConsole, wxFileName filePath, int options){
    // if the given filePath is relative, makes it absolute by the current directory
    // throws error if it is badly formed
    // if option is MUST_EXIST, checks it does and throws an error  if it does not exist or is not readable

    if (!filePath.IsAbsolute()){
        // relative  - so will prepend current working directory and do again
        filePath.MakeAbsolute(pJavaScript_pi->mCurrentDirectory);
        }
    if (!filePath.IsOk()) pConsole->throw_error(pConsole->mpCtx, "File path " + filePath.GetFullPath() + " does not make sense");
    if (options == MUST_EXIST){
        wxString fullName = filePath.GetFullPath();
        if (!filePath.FileExists())
                pConsole->throw_error(pConsole->mpCtx, "File path " + filePath.GetFullPath() + " not found");
        }
    return filePath;
    };

wxString getTextFile(Console* pConsole, wxString fileString){
    // return conents of a text file thatmust exist
    wxFileName filePath;
    wxFileName resolveFileName(Console* pConsole, wxFileName filePath, int options);
    wxTextFile inputFile;
    wxString lineOfFile;
    wxString result {wxEmptyString};
    filePath = resolveFileName(pConsole, fileString, MUST_EXIST);
    fileString = filePath.GetFullPath();
    inputFile.Open(fileString);
    for (lineOfFile = inputFile.GetFirstLine(); !inputFile.Eof(); lineOfFile = inputFile.GetNextLine()){
        result += lineOfFile + "\n";
        }
    return result;
    }

Console* findConsoleByName(wxString name){
    // find console by console name - return nullptr if none
    Console* pConsole;
    pConsole = pJavaScript_pi->mpFirstConsole;
    for (pConsole = pJavaScript_pi->mpFirstConsole; pConsole; pConsole = pConsole->mpNextConsole)
    if (pConsole->mConsoleName == name) return pConsole;
    return nullptr;
    }

wxString statusesToString(status_t mStatus){
    // returns the statuses in status as string
    return
    (mStatus.test(CLOSE)?_("CLOSE "):_("")) +
    (mStatus.test(DONE)?_("DONE "):_("")) +
    (mStatus.test(ERROR)?_("ERROR "):_("")) +
    (mStatus.test(MORE)?_("MORE "):_("")) +
    (mStatus.test(STOPPED)?_("STOPPED "):_("")) +
    (mStatus.test(TOCHAIN)?_("TOCHAIN "):_(""));
    }
    
//#if DUKDUMP
wxString dukdump_to_string(duk_context* ctx){
    duk_push_context_dump(ctx);
    wxString result = _("Duktape context dump:\n")+wxString(duk_to_string(ctx, -1))+_("\n");
    duk_pop(ctx);
    return result;
    }
//#endif // DUKDUMP
