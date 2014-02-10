/* 
 * File:   JsonMessage.h
 * Author: misterweb
 *
 * Created on 6 février 2014, 14:04
 */

#ifndef JSONMESSAGE_H
#define	JSONMESSAGE_H

#include "json/json.h"
#include "StatusMessage.h"


class CaptorMessage {
public:
    CaptorMessage();
    CaptorMessage(const CaptorMessage& orig);
    virtual ~CaptorMessage();
    
    void Serialize();

    
    Json::Value GetRoot() const {
        return root;
    }
  
private:
    // GPS
    double Latitude;
    double Longitude;
    double Altitude;
    double Heading;
    double Velocity;
    StatusMessage gpsStatus;
    
    // Temp
    double measuredTemperature;
    StatusMessage tempStatus;
    
    // Common
    std::string Date;
    std::string dirigeableId;
    StatusMessage messStatus;
    
    Json::Value root;
    
public:
    double GetAltitude() const {
        return Altitude;
    }

    void SetAltitude(double Altitude) {
        this->Altitude = Altitude;
    }

    double GetHeading() const {
        return Heading;
    }

    void SetHeading(double Heading) {
        this->Heading = Heading;
    }

    double GetLatitude() const {
        return Latitude;
    }

    void SetLatitude(double Latitude) {
        this->Latitude = Latitude;
    }

    double GetLongitude() const {
        return Longitude;
    }

    void SetLongitude(double Longitude) {
        this->Longitude = Longitude;
    }

    std::string GetDate() const {
        return Date;
    }

    void SetDate(std::string Date) {
        this->Date = Date;
    }

    double GetVelocity() const {
        return Velocity;
    }

    void SetVelocity(double Velocity) {
        this->Velocity = Velocity;
    }

    std::string GetDirigeableId() const {
        return dirigeableId;
    }

    void SetDirigeableId(std::string dirigeableId) {
        this->dirigeableId = dirigeableId;
    }

    StatusMessage GetGpsStatus() const {
        return gpsStatus;
    }

    void SetGpsStatus(StatusMessage gpsStatus) {
        this->gpsStatus = gpsStatus;
    }

    double GetMeasuredTemperature() const {
        return measuredTemperature;
    }

    void SetMeasuredTemperature(double measuredTemperature) {
        this->measuredTemperature = measuredTemperature;
    }

    StatusMessage GetMessStatus() const {
        return messStatus;
    }

    void SetMessStatus(StatusMessage messStatus) {
        this->messStatus = messStatus;
    }

    StatusMessage GetTempStatus() const {
        return tempStatus;
    }

    void SetTempStatus(StatusMessage tempStatus) {
        this->tempStatus = tempStatus;
    }

};

#endif	/* JSONMESSAGE_H */

