/* 
 * File:   HttpServer.h
 * Author: misterweb
 *
 * Created on 6 février 2014, 12:07
 */

#ifndef HTTPSERVER_H
#define	HTTPSERVER_H

#include <stdlib.h>
#include <signal.h>
#include "lib/mongoose/Server.h"
#include "lib/mongoose/WebController.h"
#include "lib/CaptorMessage.h"
#include "PhidgetClass.h"

using namespace std;
using namespace Mongoose;

class MainController : public WebController {
    public: 
        void index(Request &request, StreamResponse &response)
        {
            dispatcher(request, response);
        }
        
        void getInfos(Request &request, StreamResponse &response) {
            time_t now = time(0);
            char* dt = ctime(&now);
            std::string date(dt);
            
            StatusMessage tmpMess;
            StatusMessage gpsMess;
            StatusMessage mMess("OK",200);
            
            CaptorMessage msg;
            if(pClass.IsWriting() == false) {
            
                msg.SetAltitude(pClass.getAltitude());
                msg.SetLatitude(pClass.getLatitude());
                msg.SetLongitude(pClass.getLongitude());
                msg.SetHeading(pClass.getHeading());
                msg.SetVelocity(pClass.getVelocity());
                msg.SetDate(date);
                msg.SetMeasuredTemperature(20);
                
                msg.SetMessStatus(mMess);
                
                tmpMess.SetMessage(pClass.isTempOnline() ? "Plugged" : "Unplugged");
                tmpMess.SetCode(pClass.isTempOnline() ? 0 : 2);
                msg.SetTempStatus(tmpMess);
                
                gpsMess.SetMessage(pClass.isGpsOnline() ? "Plugged" : "Unplugged");
                gpsMess.SetCode(pClass.isGpsOnline() ? 0 : 2);
                msg.SetGpsStatus(gpsMess);    
                
                msg.Serialize();
                
                response << writer.write(msg.GetRoot()) << endl;
            }    
        }
        
        void dispatcher(Request &request, StreamResponse &response) {
            std::string s;
            s = request.get("cmdType", "UTF-8");
            
            if(s == "GetInfos")
            {
                getInfos(request,response);
            } 
            else if(s == "Up")
            {
                
            }
            else
            {
                // TODO
            }
        }

        void setup()
        {
            addRoute("GET", "/", MainController, index);
            
            pClass.start();
            cout << "Ready." << endl;
        }
        
        private:
            
    PhidgetClass pClass;
    Json::FastWriter writer;
};

#endif	/* HTTPSERVER_H */

