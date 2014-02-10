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
                
                msg.SetMessStatus(&mMess);
                
                tmpMess.SetMessage(pClass.isTempOnline() ? "Plugged" : "Unplugged");
                tmpMess.SetCode(pClass.isTempOnline() ? 0 : 2);
                msg.SetTempStatus(&tmpMess);
                
                gpsMess.SetMessage(pClass.isGpsOnline() ? "Plugged" : "Unplugged");
                gpsMess.SetCode(pClass.isGpsOnline() ? 0 : 2);
                msg.SetGpsStatus(&gpsMess);    
                
                msg.Serialize();
                
                response << writer.write(msg.GetRoot());
            }    
        }
        
        void dispatcher(Request &request, StreamResponse &response) {
            std::string cmdType, body;
            Json::Value root;
            Json::Reader reader;
            bool success = false;
            body = request.getData();
            
            success = reader.parse(body, root);
            
            if(success) {
                cmdType = root.get("cmdType", "GetInfos").asString();
            } else {
                cmdType = "GetInfos";
            }
            
            
            if(cmdType == "GetInfos")
            {
                getInfos(request,response);
            } 
            else if(cmdType == "Up")
            {
                std::cout << "1" << std::endl;
            }
            else if(cmdType == "Left")
            {
                std::cout << "3" << std::endl;
            }
            else if(cmdType == "Down")
            {
                std::cout << "2" << std::endl;
            }
            else if(cmdType == "Right")
            {
                std::cout << "4" << std::endl;
            }
            else if(cmdType == "GoToGPSPosition")
            {
                // TODO
            }
            else if(cmdType == "Forward")
            {
                std::cout << "5" << std::endl;
            }
            else if(cmdType == "Back")
            {
                std::cout << "6" << std::endl;
            }
        }

        void setup()
        {
            addRoute("POST", "/", MainController, index);
            
            pClass.start();
            cout << "Ready." << endl;
        }
        
        private:
            
    PhidgetClass pClass;
    Json::FastWriter writer;
};

#endif	/* HTTPSERVER_H */

