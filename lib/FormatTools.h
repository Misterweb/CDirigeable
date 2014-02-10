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
#include <string.h>

class FormatTools { // Static
public:
    virtual ~FormatTools();

    static std::string dtostr(double in, int precision) {
        std::string s;
        char buffer[100];
        char comp[100] = "%.";
        char bufferFormat[10];
        
        sprintf(bufferFormat, "%d", precision);
        
        strcat(comp, bufferFormat);
        strcat(comp, "lf");
        
        
        sprintf(buffer,comp,in);
        s = buffer;
        
        return s;
    }
    
    static std::string itostr(int in)
    {
        char buffer[10];
        std::string tmp;

        sprintf(buffer, "%d", in);
        tmp = buffer;
        
        return tmp;
    }
};

#endif	/* FORMATTOOLS_H */

