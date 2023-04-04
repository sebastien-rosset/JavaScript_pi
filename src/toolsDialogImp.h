/**************************************************************************
* Project:  OpenCPN
* Purpose:  JavaScript Plugin
* Author:   Tony Voss 25/02/2021
*
* Copyright Ⓒ 2023 by Tony Voss
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License, under which
* you must including a copy of these terms in all copies
* https://www.gnu.org/licenses/gpl-3.0.en.html
***************************************************************************
*/

#ifndef toolsDialog_h
#define toolsDialog_h

#include "wx/wx.h"
#include "wx/window.h"
#include "toolsDialogGui.h"
#include "trace.h"
#include "scaling.h"

class ToolsClass: public ToolsClassBase {
public:

    void onPageChanged( wxNotebookEvent& event );
    void onAddConsole( wxCommandEvent& event );
    void onChangeName( wxCommandEvent& event );
    void onKeepOnTop( wxCommandEvent& event );
    void onRecieveNMEAmessage( wxCommandEvent& event );
    void onRecieveMessage( wxCommandEvent& event );
    void onChangeDirectory( wxCommandEvent& event );
    void onDump( wxCommandEvent& event );
    void onClean( wxCommandEvent& event );
    void onClose( wxCloseEvent& event );
    void setConsoleChoices();
    void onParkingRevert(wxCommandEvent& event);
    void onParkingCustomise(wxCommandEvent& event);
    void onParkingReveal(wxCommandEvent& event);
    void cleanupParking();
    void setupPage(int pageNumber);
	
    ToolsClass( wxWindow *parent,  wxWindowID id = wxID_ANY)
        :ToolsClassBase(parent, id)
        {        
        // adding extra _ to list of valid chars via wxFormBuilder does not work.  Bug in wxWidgets?
        // so we will do it this way
        // this only available in wxWidgets 3.1.3 and later
#if (wxVERSION_NUMBER >= 3103)
        wxTextValidator* validator;
        validator = (wxTextValidator*)m_newConsoleName->GetValidator();
        validator->AddCharIncludes("_");   
        validator = (wxTextValidator*)m_changedName->GetValidator();
        validator->AddCharIncludes("_");
#endif
        m_notebook->SetSelection(0);	//start on required page
        };
        
	void fixForScreenRes(){	// fix up sizes according to screen resolution
		double scale = SCALE(this);
		if (scale == 1) return;	// nothing to do
		wxSize size;
//		wxSizer* sizer;
		
		m_notebook->SetSize(FromDIP(m_notebook->GetSize()));
		
/*
		sizer = this->GetSizer();
		size = sizer->GetMinSize();
		sizer->SetMinSize(FromDIP(size));
		this->SetSizer(sizer);
*/

		// Consoles tab
		Consoles->SetSize(FromDIP(Consoles->GetSize()));
		m_newConsoleName->SetSize(FromDIP(m_newConsoleName->GetSize()));
		m_oldNames->SetSize(FromDIP(m_oldNames->GetSize()));
		m_changedName->SetSize(FromDIP(m_changedName->GetSize()));		
		m_ConsolesMessage->SetSize(FromDIP(m_ConsolesMessage->GetSize()));
		Consoles->Layout();
/*
		sizer = Consoles->GetSizer();
		size = sizer->GetMinSize();
		sizer->SetMinSize(FromDIP(size));
		Consoles->SetSizer(sizer);
*/

		// Directory tab
		Directory->SetSize(FromDIP(Directory->GetSize()));
		mCurrentDirectory->SetSize(FromDIP(mCurrentDirectory->GetSize()));
		Directory->Layout();
		
		// NMEA tab
		size = m_NMEAmessage->GetSize();
		size.x *= scale;
		m_NMEAmessage->SetSize(size);

		size = m_MessageID->GetSize();
		size.x *= scale;
		m_MessageID->SetSize(size);

		size = m_MessageBody->GetSize();
		m_MessageBody->SetSize(FromDIP(size));

		size = m_parkingMessage->GetSize();
		m_parkingMessage->SetSize(FromDIP(size));

		// NB The wrap with overides that set in wxForBuilder as there is no way of getting the value set
		HelpTopText1->Wrap( 550*scale );
		HelpTopText11->Wrap( 550*scale );
		HelpTopText111->Wrap( 550*scale );
		HelpTopText1111->Wrap( 550*scale );
		HelpTopText11111->Wrap( 550*scale );

		}
    	    
	};

#endif /* ToolsDialog_h */
