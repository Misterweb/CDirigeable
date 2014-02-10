/* 
 * File:   PhidgetClass.cpp
 * Author: misterweb
 * 
 * Created on 6 février 2014, 12:01
 */

#include "PhidgetClass.h"
#include <iostream>
#include <string.h>

using namespace std;


PhidgetClass::PhidgetClass() {
    m_bGpsOnline = false;
    m_bTempOnline = false;
}

PhidgetClass::PhidgetClass(const PhidgetClass& orig) {
}

PhidgetClass::~PhidgetClass() {
}

int CCONV CAttachHandler(CPhidgetHandle IFK, void *userptr) {
    ((PhidgetClass *) userptr)->AttachHandler(IFK);
    return 0;
}

int CCONV CDetachHandler(CPhidgetHandle IFK, void *userptr) {
    ((PhidgetClass *) userptr)->DetachHandler(IFK);
    return 0;
}

int CCONV CErrorHandler(CPhidgetHandle IFK, void *userptr, int ErrorCode, const char *unknown) {
    ((PhidgetClass *) userptr)->ErrorHandler(IFK, ErrorCode, unknown);
    return 0;
}

int CCONV CGPSPositonHandler(CPhidgetGPSHandle IGPS, void *userPtr, double latitude, double longitude, double altitude) {
    ((PhidgetClass *) userPtr)->PositionChangedHandler(IGPS, latitude, longitude, altitude);
    return 0;
}

void PhidgetClass::start() {
    m_bWriting = false;
    
    CPhidgetGPS_create(&ifGps);
    CPhidget_set_OnAttach_Handler((CPhidgetHandle) ifGps, CAttachHandler, this);
    CPhidget_set_OnDetach_Handler((CPhidgetHandle) ifGps, CDetachHandler, this);
    CPhidget_set_OnError_Handler((CPhidgetHandle) ifGps, CErrorHandler, this);
    CPhidget_open((CPhidgetHandle) ifGps, -1);
    
    
    CPhidgetGPS_set_OnPositionChange_Handler(ifGps, CGPSPositonHandler, this);
    
    cout << "Started" << endl;
}

int PhidgetClass::AttachHandler(CPhidgetHandle IFK) {
    int serialNo;
    const char *name;

    CPhidget_getDeviceName(IFK, &name);
    CPhidget_getSerialNumber(IFK, &serialNo);

    cout << name << serialNo << " attached!" << endl;
    
    if(strcmp(name,"GPS") == 0) {
        m_bGpsOnline = true;
    } 
    
    if(strcmp(name,"Temperature") == 0) {
        m_bTempOnline = true;
    }    

    return 0;
}

int PhidgetClass::DetachHandler(CPhidgetHandle IFK) {
    int serialNo;
    const char *name;

    CPhidget_getDeviceName(IFK, &name);
    CPhidget_getSerialNumber(IFK, &serialNo);

    cout << name << serialNo << " detached!" << endl;
    
    if(strcmp(name,"GPS") == 0) {
        m_bGpsOnline = false;
    } 
    
    if(strcmp(name,"Temperature") == 0) {
        m_bTempOnline = false;
    }    

    return 0;
}

int PhidgetClass::ErrorHandler(CPhidgetHandle IFK, int ErrorCode, const char *unknown) {
    cout << "Error handled." << ErrorCode << " - " << unknown << endl;

    return 0;
}

int PhidgetClass::PositionChangedHandler(CPhidgetGPSHandle IGPS, double latitude, double longitude, double altitude)
{
    m_bGpsOnline = true;
    m_bWriting = true;
    m_dLatitude = latitude;
    m_dLongitude = longitude;
    m_dAltitude = altitude;
    CPhidgetGPS_getHeading(IGPS, &m_dHeading);
    CPhidgetGPS_getVelocity(IGPS, &m_dVelocity);
    m_bWriting = false;
    
    return 0;
}


int PhidgetClass::GetSerialNumber(int* iRet)
{
    CPhidget_getSerialNumber((CPhidgetHandle)ifGps, iRet);
    
    return 0;
}