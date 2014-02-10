/* 
 * File:   PhidgetClass.h
 * Author: misterweb
 *
 * Created on 6 février 2014, 12:01
 */


#ifndef SIMPLE_H
#define SIMPLE_H

#include <stdio.h>
#include <phidget21.h>

class PhidgetClass
{
public:
        PhidgetClass();
        PhidgetClass(const PhidgetClass& orig);
        virtual ~PhidgetClass();
	void start();
	int AttachHandler(CPhidgetHandle IFK);
	int DetachHandler(CPhidgetHandle IFK);
	int ErrorHandler(CPhidgetHandle IFK, int ErrorCode, const char *unknown);
        int PositionChangedHandler(CPhidgetGPSHandle IGPS, double latitude, double longitude, double altitude);
        
        int GetSerialNumber(int* iRet);
        
        //std::string GetJsonData();
        inline bool IsWriting() { return m_bWriting; }

    double getAltitude() const {
        return m_dAltitude;
    }

    double getLatitude() const {
        return m_dLatitude;
    }


    double getLongitude() const {
        return m_dLongitude;
    }

    double getHeading() const {
        return m_dHeading;
    }

    double getVelocity() const {
        return m_dVelocity;
    }

    bool isGpsOnline() const {
        return m_bGpsOnline;
    }

    bool isTempOnline() const {
        return m_bTempOnline;
    }


private:
	CPhidgetGPSHandle ifGps;
        
        double m_dLatitude;
        double m_dLongitude;
        double m_dAltitude;
        double m_dHeading;
        double m_dVelocity;
        
        bool   m_bGpsOnline;
        bool   m_bTempOnline;
        
        bool m_bWriting;
};

#endif //SIMPLE_H