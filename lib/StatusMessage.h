/* 
 * File:   StatusMessage.h
 * Author: misterweb
 *
 * Created on 6 février 2014, 14:55
 */

#ifndef STATUSMESSAGE_H
#define	STATUSMESSAGE_H

#include "json/json.h"

class StatusMessage {
public:
    StatusMessage();
    StatusMessage(std::string _Mess, int _Code);
    StatusMessage(const StatusMessage& orig);
    virtual ~StatusMessage();
    
    void Serialize();
    
    Json::Value GetRoot() const {
        return root;
    }
    
    int GetCode() const {
        return Code;
    }

    void SetCode(int Code) {
        this->Code = Code;
    }

    std::string GetMessage() const {
        return Message;
    }

    void SetMessage(std::string Message) {
        this->Message = Message;
    }

    
private:
    // GPS
    std::string Message;
    int         Code;
    
    Json::Value root;
};

#endif	/* STATUSMESSAGE_H */

