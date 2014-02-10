/* 
 * File:   main.cpp
 * Author: misterweb
 *
 * Created on 6 février 2014, 09:41
 */

#include <cstdlib>
#include <iostream>
#include <unistd.h>
#include <phidget21.h>
#include "MainController.h"

using namespace std;


#include "PhidgetClass.h"
#include "lib/json/writer.h"
#include "lib/CaptorMessage.h"



int main(int argc, char* argv[]) {
    cout << "Starting..." << endl;


    MainController main;
    Server       server(8080);
    
    server.registerController(&main);
    server.start();
    

    while (1) {    
        usleep(75);
    };

    return 0;
}
