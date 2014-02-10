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
}

CaptorMessage::CaptorMessage(const CaptorMessage& orig) {
}

CaptorMessage::~CaptorMessage() {
}

void CaptorMessage::Serialize() {
    
    tempStatus.Serialize();
    gpsStatus.Serialize();
    messStatus.Serialize();
    
    // GPS
    root["altitude"] = FormatTools::dtostr(Altitude, 6);
    root["latitude"] = Latitude;
    root["longitude"] = Longitude;
    root["heading"] = Heading;
    root["velocity"] = Velocity;
    root["measuredTemperature"] = measuredTemperature;
    root["date"] = Date;
    root["dirigeableId"] = dirigeableId;
    root["temperatureSensorStatus"] = tempStatus.GetRoot();
    root["gpsStatus"] = gpsStatus.GetRoot();
    root["message"] = messStatus.GetRoot();
}
