/* 
 * File:   JsonMessage.cpp
 * Author: misterweb
 * 
 * Created on 6 février 2014, 14:04
 */

#include "CaptorMessage.h"
#include "FormatTools.h"

CaptorMessage::CaptorMessage() {
    Altitude = 0.0;
    Latitude = 0.0;
    Longitude = 0.0;
    Heading   = 0.0;
    Velocity  = 0.0;
    measuredTemperature = 0.0;
    Date = "";
    dirigeableId = "0";
    
    gpsStatus = NULL;
    tempStatus = NULL;
    messStatus = NULL;
}

CaptorMessage::CaptorMessage(const CaptorMessage& orig) {
}

CaptorMessage::~CaptorMessage() {
}

void CaptorMessage::Serialize() {
    
    if(tempStatus != NULL)
        tempStatus->Serialize();
    if(gpsStatus != NULL)
        gpsStatus->Serialize();
    if(messStatus != NULL)
        messStatus->Serialize();
    
    // GPS
    root["altitude"] = FormatTools::dtostr(Altitude, 6);
    root["latitude"] = FormatTools::dtostr(Latitude,6);
    root["longitude"] = FormatTools::dtostr(Longitude,6);
    root["heading"] = FormatTools::dtostr(Heading,1);
    root["velocity"] = FormatTools::dtostr(Velocity,1);
    root["measuredTemperature"] = FormatTools::dtostr(measuredTemperature,4);
    root["date"] = Date;
    root["dirigeableId"] = dirigeableId;
    root["temperatureSensorStatus"] = tempStatus->GetRoot();
    root["gpsStatus"] = gpsStatus->GetRoot();
    root["message"] = messStatus->GetRoot();
}
