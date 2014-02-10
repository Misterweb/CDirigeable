/* 
 * File:   FormatTools.h
 * Author: misterweb
 *
 * Created on 10 février 2014, 09:33
 */

#ifndef FORMATTOOLS_H
#define	FORMATTOOLS_H

#include <string>
#include <stdio.h>

class FormatTools { // Static
public:
    virtual ~FormatTools();

    static std::string dtostr(double in, int precision) {
        std::string s;
        char buffer[100];
        char bufferFormat[10];
        
        sprintf(bufferFormat, "\%.%dlf", precision);
        
        
        sprintf(buffer,bufferFormat,in);
        s = buffer;
        
        return s;
    }

};

#endif	/* FORMATTOOLS_H */

