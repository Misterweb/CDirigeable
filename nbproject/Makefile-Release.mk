#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=mips-openwrt-linux-gcc
CCC=mips-openwrt-linux-g++
CXX=mips-openwrt-linux-g++
FC=gfortran
AS=mips-openwrt-linux-as

# Macros
CND_PLATFORM=Linino-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/PhidgetClass.o \
	${OBJECTDIR}/lib/CaptorMessage.o \
	${OBJECTDIR}/lib/FormatTools.o \
	${OBJECTDIR}/lib/StatusMessage.o \
	${OBJECTDIR}/lib/json/json_reader.o \
	${OBJECTDIR}/lib/json/json_value.o \
	${OBJECTDIR}/lib/json/json_writer.o \
	${OBJECTDIR}/lib/mongoose/Controller.o \
	${OBJECTDIR}/lib/mongoose/JsonController.o \
	${OBJECTDIR}/lib/mongoose/JsonResponse.o \
	${OBJECTDIR}/lib/mongoose/Mutex.o \
	${OBJECTDIR}/lib/mongoose/Request.o \
	${OBJECTDIR}/lib/mongoose/Response.o \
	${OBJECTDIR}/lib/mongoose/Server.o \
	${OBJECTDIR}/lib/mongoose/Session.o \
	${OBJECTDIR}/lib/mongoose/Sessions.o \
	${OBJECTDIR}/lib/mongoose/StreamResponse.o \
	${OBJECTDIR}/lib/mongoose/UploadFile.o \
	${OBJECTDIR}/lib/mongoose/Utils.o \
	${OBJECTDIR}/lib/mongoose/WebController.o \
	${OBJECTDIR}/lib/mongoose/WebSocket.o \
	${OBJECTDIR}/lib/mongoose/WebSockets.o \
	${OBJECTDIR}/lib/mongoose/mongoose.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-DHAS_JSONCPP=OFF
CXXFLAGS=-DHAS_JSONCPP=OFF

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../../phidget/libiconv.so ../../phidget/libphidget21.so ../../phidget/libusb-1.0.so

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable: ../../phidget/libiconv.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable: ../../phidget/libphidget21.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable: ../../phidget/libusb-1.0.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable ${OBJECTFILES} ${LDLIBSOPTIONS} -pthread

${OBJECTDIR}/PhidgetClass.o: PhidgetClass.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PhidgetClass.o PhidgetClass.cpp

${OBJECTDIR}/lib/CaptorMessage.o: lib/CaptorMessage.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/CaptorMessage.o lib/CaptorMessage.cpp

${OBJECTDIR}/lib/FormatTools.o: lib/FormatTools.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/FormatTools.o lib/FormatTools.cpp

${OBJECTDIR}/lib/StatusMessage.o: lib/StatusMessage.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/StatusMessage.o lib/StatusMessage.cpp

${OBJECTDIR}/lib/json/json_reader.o: lib/json/json_reader.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/json
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/json/json_reader.o lib/json/json_reader.cpp

${OBJECTDIR}/lib/json/json_value.o: lib/json/json_value.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/json
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/json/json_value.o lib/json/json_value.cpp

${OBJECTDIR}/lib/json/json_writer.o: lib/json/json_writer.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/json
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/json/json_writer.o lib/json/json_writer.cpp

${OBJECTDIR}/lib/mongoose/Controller.o: lib/mongoose/Controller.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Controller.o lib/mongoose/Controller.cpp

${OBJECTDIR}/lib/mongoose/JsonController.o: lib/mongoose/JsonController.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/JsonController.o lib/mongoose/JsonController.cpp

${OBJECTDIR}/lib/mongoose/JsonResponse.o: lib/mongoose/JsonResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/JsonResponse.o lib/mongoose/JsonResponse.cpp

${OBJECTDIR}/lib/mongoose/Mutex.o: lib/mongoose/Mutex.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Mutex.o lib/mongoose/Mutex.cpp

${OBJECTDIR}/lib/mongoose/Request.o: lib/mongoose/Request.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Request.o lib/mongoose/Request.cpp

${OBJECTDIR}/lib/mongoose/Response.o: lib/mongoose/Response.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Response.o lib/mongoose/Response.cpp

${OBJECTDIR}/lib/mongoose/Server.o: lib/mongoose/Server.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Server.o lib/mongoose/Server.cpp

${OBJECTDIR}/lib/mongoose/Session.o: lib/mongoose/Session.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Session.o lib/mongoose/Session.cpp

${OBJECTDIR}/lib/mongoose/Sessions.o: lib/mongoose/Sessions.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Sessions.o lib/mongoose/Sessions.cpp

${OBJECTDIR}/lib/mongoose/StreamResponse.o: lib/mongoose/StreamResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/StreamResponse.o lib/mongoose/StreamResponse.cpp

${OBJECTDIR}/lib/mongoose/UploadFile.o: lib/mongoose/UploadFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/UploadFile.o lib/mongoose/UploadFile.cpp

${OBJECTDIR}/lib/mongoose/Utils.o: lib/mongoose/Utils.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Utils.o lib/mongoose/Utils.cpp

${OBJECTDIR}/lib/mongoose/WebController.o: lib/mongoose/WebController.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/WebController.o lib/mongoose/WebController.cpp

${OBJECTDIR}/lib/mongoose/WebSocket.o: lib/mongoose/WebSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/WebSocket.o lib/mongoose/WebSocket.cpp

${OBJECTDIR}/lib/mongoose/WebSockets.o: lib/mongoose/WebSockets.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/WebSockets.o lib/mongoose/WebSockets.cpp

${OBJECTDIR}/lib/mongoose/mongoose.o: lib/mongoose/mongoose.c 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/mongoose.o lib/mongoose/mongoose.c

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../phidget -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
