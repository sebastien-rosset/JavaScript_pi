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
#include <iostream>
#include "wx/wx.h"
#include "duktape.h"
#include "JavaScriptgui_impl.h"
#include <unordered_map>
#include <vector>
#include <wx/arrstr.h>

extern JavaScript_pi* pJavaScript_pi;
void throwErrorByCtx(duk_context *ctx, wxString message);

const char* errorStrings[] = {
	"RESULT_COMM_NO_ERROR",
	"Invalid driver handle",
	"RESULT_COMM_INVALID_PARMS",
	"RESULT_COMM_TX_ERROR",
	"RESULT_COMM_REGISTER_GATEWAY_ERROR"
	};
    
duk_ret_t getDriverHandles(duk_context* ctx){
	std::vector<DriverHandle> handlesVector = GetActiveDrivers();
	duk_idx_t arr_idx = duk_push_array(ctx);
	int count = handlesVector.size();
    if (count > 0){
        for (int i = 0; i < count; i++){
            duk_push_string(ctx, handlesVector[i].c_str());
            duk_put_prop_index(ctx, arr_idx, i);
            }
        }
	return 1;
	}
	
duk_ret_t getDriverAttributes(duk_context* ctx){
	// OCPNgetDriverAttributes(driverHandle)
	std::unordered_map<std::string, std::string> attributeMap;
	std::unordered_map<std::string, std::string> :: iterator i;
	DriverHandle handle;
	
//	duk_require_number(ctx, 0);
	handle = duk_get_string(ctx, 0);
	duk_pop(ctx);		
	attributeMap = GetAttributes(handle);
	duk_push_object(ctx);
	for (i = attributeMap.begin(); i != attributeMap.end(); i++){
		duk_push_string(ctx, i->first.c_str());
		duk_push_string(ctx, i->second.c_str());
		duk_put_prop(ctx, -3);
		}
	return 1;			
	}

duk_ret_t writeDriver(duk_context* ctx){
	wxString NMEAchecksum(wxString sentence);
	DriverHandle handle;
	wxString sentence;
	
	handle = (DriverHandle) duk_get_string(ctx, 0);
	sentence = wxString(duk_to_string(ctx,1));
	duk_pop_2(ctx);
	
	// Determine protocol
	std::unordered_map<std::string, std::string> attributes = GetAttributes(handle);	
  	auto protocol_it = attributes.find("protocol");
  	if (protocol_it == attributes.end()) throwErrorByCtx(ctx, wxString(wxString::Format("OCPNWriteDriver error: %s\n", "Handle does not have protocol")));
    wxString protocol = protocol_it->second;
	if (!protocol.compare("nmea0183")){ // if NMEA0183, clean up sentence and add checksum
		sentence.Trim();        
		// we will drop any existing checksum
		int starPos = sentence.Find("*");
		if (starPos != wxNOT_FOUND){ // yes there is one
			sentence = sentence.SubString(0, starPos-1); // truncate at * onwards
			}
		if  (!(((sentence[0] == '$') || (sentence[0] == '!')) && (sentence[6] == ',')))
			throwErrorByCtx(ctx, "OCPNwriteDriverNMEA sentence does not start $....., or !.....,");
		sentence = sentence.Append("*" + NMEAchecksum(sentence) + "\r\n");
		}
	else throwErrorByCtx(ctx, "OCPNWriteDriver error: output not NMEA0183");

	auto payload = make_shared<std::vector<uint8_t>>();
	for (const auto& ch : sentence) payload->push_back(ch);
	CommDriverResult outcome = WriteCommDriver(handle, payload);
	if (outcome == RESULT_COMM_NO_ERROR) {duk_push_string(ctx, "OK"); return 1;}
	else throwErrorByCtx(ctx, wxString(wxString::Format("OCPNWriteDriver error: %s\n", errorStrings[outcome])));	
	}


void register_drivers(duk_context *ctx){
    duk_push_global_object(ctx);
    
    duk_push_string(ctx, "OCPNgetActiveDriverHandles");
    duk_push_c_function(ctx, getDriverHandles, 0 /* arguments*/);
    duk_def_prop(ctx, -3, DUK_DEFPROP_HAVE_VALUE | DUK_DEFPROP_SET_WRITABLE | DUK_DEFPROP_SET_CONFIGURABLE);

    duk_push_string(ctx, "OCPNgetDriverAttributes");
    duk_push_c_function(ctx, getDriverAttributes, 1 /* arguments*/);
    duk_def_prop(ctx, -3, DUK_DEFPROP_HAVE_VALUE | DUK_DEFPROP_SET_WRITABLE | DUK_DEFPROP_SET_CONFIGURABLE);

    duk_push_string(ctx, "OCPNwriteDriver");
    duk_push_c_function(ctx, writeDriver, 2 /* arguments*/);
    duk_def_prop(ctx, -3, DUK_DEFPROP_HAVE_VALUE | DUK_DEFPROP_SET_WRITABLE | DUK_DEFPROP_SET_CONFIGURABLE);
    };

