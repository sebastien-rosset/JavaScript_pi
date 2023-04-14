///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version 3.10.1-0-g8feb16b)
// http://www.wxformbuilder.org/
//
// PLEASE DO *NOT* EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#pragma once

#include <wx/artprov.h>
#include <wx/xrc/xmlres.h>
#include <wx/string.h>
#include <wx/stattext.h>
#include <wx/gdicmn.h>
#include <wx/font.h>
#include <wx/colour.h>
#include <wx/settings.h>
#include <wx/textctrl.h>
#include <wx/valtext.h>
#include <wx/button.h>
#include <wx/bitmap.h>
#include <wx/image.h>
#include <wx/icon.h>
#include <wx/sizer.h>
#include <wx/statbox.h>
#include <wx/choice.h>
#include <wx/panel.h>
#include <wx/hyperlink.h>
#include <wx/statline.h>
#include <wx/notebook.h>
#include <wx/dialog.h>

///////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
/// Class ToolsClassBase
///////////////////////////////////////////////////////////////////////////////
class ToolsClassBase : public wxDialog
{
	private:

	protected:
		wxPanel* Consoles;
		wxStaticText* m_prompt;
		wxTextCtrl* m_newConsoleName;
		wxStaticText* m_rename_prompt;
		wxChoice* m_oldNames;
		wxStaticText* m_staticText15;
		wxTextCtrl* m_changedName;
		wxTextCtrl* m_ConsolesMessage;
		wxPanel* Directory;
		wxStaticText* mCurrentDirectory;
		wxStaticText* mCurrentDirectoryString;
		wxPanel* NMEA;
		wxStaticText* NMEAtopText;
		wxStaticText* m_NMEAMessageText;
		wxButton* m_NMEAReceiveMessageButton;
		wxPanel* Message;
		wxStaticText* MessageTopText;
		wxStaticText* m_MessageIDText1;
		wxButton* m_receiveMessageButton;
		wxStaticText* m_MessageText11;
		wxPanel* Parking;
		wxStaticText* m_buttonAdvice;
		wxStaticText* m_revertPrompt;
		wxButton* m_parking_revert_button;
		wxStaticText* m_customPrompt;
		wxButton* m_customiseButton;
		wxStaticText* m_revealPrompt;
		wxButton* m_revealButton;
		wxTextCtrl* m_parkingMessage;
		wxPanel* Help;
		wxStaticText* HelpTopText1;
		wxHyperlinkCtrl* m_hyperlink1;
		wxHyperlinkCtrl* m_hyperlink11;
		wxStaticText* HelpTopText11;
		wxHyperlinkCtrl* m_hyperlink5;
		wxStaticText* HelpTopText111;
		wxHyperlinkCtrl* m_hyperlink511;
		wxStaticText* HelpTopText1111;
		wxHyperlinkCtrl* m_hyperlink10;
		wxStaticLine* m_staticline1;
		wxStaticText* HelpTopText11111;
		wxHyperlinkCtrl* m_hyperlink101;
		wxHyperlinkCtrl* m_hyperlink1011;
		wxPanel* Diagnostics;
		wxStaticText* m_diagnosticAdvice;
		wxStaticText* m_dumpPrompt;
		wxButton* m_dumpButton;
		wxTextCtrl* m_charsToClean;
		wxStaticText* m_cleanPrompt;
		wxButton* m_cleanButton;

		// Virtual event handlers, override them in your derived class
		virtual void onClose( wxCloseEvent& event ) { event.Skip(); }
		virtual void onPageChanged( wxNotebookEvent& event ) { event.Skip(); }
		virtual void onAddConsole( wxCommandEvent& event ) { event.Skip(); }
		virtual void onChangeName( wxCommandEvent& event ) { event.Skip(); }
		virtual void onChangeDirectory( wxCommandEvent& event ) { event.Skip(); }
		virtual void onRecieveNMEAmessage( wxCommandEvent& event ) { event.Skip(); }
		virtual void onRecieveMessage( wxCommandEvent& event ) { event.Skip(); }
		virtual void onParkingRevert( wxCommandEvent& event ) { event.Skip(); }
		virtual void onParkingCustomise( wxCommandEvent& event ) { event.Skip(); }
		virtual void onParkingReveal( wxCommandEvent& event ) { event.Skip(); }
		virtual void onDump( wxCommandEvent& event ) { event.Skip(); }
		virtual void onClean( wxCommandEvent& event ) { event.Skip(); }


	public:
		wxNotebook* m_notebook;
		wxButton* m_addButton;
		wxButton* m_changeButton;
		wxButton* mDirectoryChangeButton;
		wxTextCtrl* m_NMEAmessage;
		wxTextCtrl* m_MessageID;
		wxTextCtrl* m_MessageBody;
		wxString mNewNameInput;
		wxString m_changedNameInput;

		ToolsClassBase( wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = wxT("JavaScript tools"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize( -1,-1 ), long style = wxCAPTION|wxCLOSE_BOX|wxDEFAULT_DIALOG_STYLE|wxSTAY_ON_TOP );

		~ToolsClassBase();

};

