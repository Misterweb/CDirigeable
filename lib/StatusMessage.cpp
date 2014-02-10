/* 
 * File:   StatusMessage.cpp
 * Author: misterweb
 * 
 * Created on 6 février 2014, 14:55
 */

#include "StatusMessage.h"
#include "FormatTools.h"
#include <stdlib.h>

StatusMessage::StatusMessage() {
    Message = "";
    Code    = 0;
}

StatusMessage::StatusMessage(std::string _Mess, int _Code)
{
    Message = _Mess;
    Code = _Code;
}

StatusMessage::StatusMessage(const StatusMessage& orig) {
}

StatusMessage::~StatusMessage() {
}

void StatusMessage::Serialize() {  

    root["Message"] = Message;
    root["Code"] = FormatTools::itostr(Code);
    
    
}
