/**************************************************************************
* Project:  OpenCPN
* Purpose:  JavaScript Plugin
* Author:   Tony Voss 16/05/2020
*
* Copyright Ⓒ 2024 by Tony Voss
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License, under which
* you must including a copy of these terms in all copies
* https://www.gnu.org/licenses/gpl-3.0.en.html
***************************************************************************
*/
#ifndef trace_h
#define trace_h
// 
//USE:  TRACE(level, wxString); will display if level >= TRACE_LEVEL
// output will go to log or, if in harness, to stdout or to a window
#define TRACE_YES 	false // if true, include TRACE code. Should be false in release
#define TRACE_LEVEL_0	true	// whether to trace level
#define TRACE_THIS  4	// specific explicit level to trace, else 0
#define TRACE_MIN	25	// specify a range of levels to trace
#define TRACE_MAX	24	// set TRACE_MIN to > TRACE_MAX to avoid tracing range
#define TRACE_TO_WINDOW true     // if true, trace will be to a window
//                                 if false, then to the log file or if in the harness to stdout
#if TRACE_TO_WINDOW
    // trace to window goes here
    void windowTrace(int level, wxString text);
    inline void ptrace(int level, wxString text){
        if ((TRACE_LEVEL_0 && (level == 0)) || ((TRACE_THIS != 0) && (level == TRACE_THIS)) || ((level <= TRACE_MAX) && (level >= TRACE_MIN))) windowTrace(level, wxString::Format("L%d\t%s", level, text));
        }
#else   // TRACE_TO_WINDOW false
    #ifdef IN_HARNESS
        #include <iostream>
        inline void ptrace(int level, wxString text){
            if ((level == 0) || ((level <= TRACE_MAX) && (level >= TRACE_MIN))) std::cout << "Trace L" << level << ":\t" << text << "\n";
            }
    #else   // not IN_HARNESS
        inline void ptrace(int level, wxString text){
            if ((level == 0) || ((level <= TRACE_MAX) && (level >= TRACE_MIN))) wxLogMessage(wxString::Format("JavaScript_pi L%d\t%s", level, text));
            }
    #endif  // IN_HARNESS
#endif    // TRACE_TO_WINDOW false

#if TRACE_YES
    #define TRACE(L,A) (ptrace(L,A), (void)0)
#else
    #define TRACE(L,A) ((void)0)
#endif  // TRACE_LEVEL

#endif // trace_h

