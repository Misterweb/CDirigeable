#ifndef SIMPLE_H
#define SIMPLE_H

#include <stdio.h>
#include <phidget21.h>

class PhidgetClass
{
public:
	void start();
	int AttachHandler(CPhidgetHandle IFK);
	int DetachHandler(CPhidgetHandle IFK);
	int ErrorHandler(CPhidgetHandle IFK, int ErrorCode, const char *unknown);
        int PositionChangedHandler(CPhidgetGPSHandle IGPS, double latitude, double longitude, double altitude);
        
        int GetSerialNumber(int* iRet);
        
        string GetJsonData();
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
;
private:
	CPhidgetGPSHandle ifGps;
        
        double m_dLatitude;
        double m_dLongitude;
        double m_dAltitude;
        
        bool m_bWriting;
};

#endif //SIMPLE_H