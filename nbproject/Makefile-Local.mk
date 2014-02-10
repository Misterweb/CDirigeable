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
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Local
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

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

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

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} 


${OBJECTDIR}/PhidgetClass_nomain.o: ${OBJECTDIR}/PhidgetClass.o PhidgetClass.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/PhidgetClass.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/PhidgetClass_nomain.o PhidgetClass.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/PhidgetClass.o ${OBJECTDIR}/PhidgetClass_nomain.o;\
	fi

${OBJECTDIR}/lib/CaptorMessage_nomain.o: ${OBJECTDIR}/lib/CaptorMessage.o lib/CaptorMessage.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/CaptorMessage.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/CaptorMessage_nomain.o lib/CaptorMessage.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/CaptorMessage.o ${OBJECTDIR}/lib/CaptorMessage_nomain.o;\
	fi

${OBJECTDIR}/lib/FormatTools_nomain.o: ${OBJECTDIR}/lib/FormatTools.o lib/FormatTools.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/FormatTools.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/FormatTools_nomain.o lib/FormatTools.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/FormatTools.o ${OBJECTDIR}/lib/FormatTools_nomain.o;\
	fi

${OBJECTDIR}/lib/StatusMessage_nomain.o: ${OBJECTDIR}/lib/StatusMessage.o lib/StatusMessage.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/StatusMessage.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/StatusMessage_nomain.o lib/StatusMessage.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/StatusMessage.o ${OBJECTDIR}/lib/StatusMessage_nomain.o;\
	fi

${OBJECTDIR}/lib/json/json_reader_nomain.o: ${OBJECTDIR}/lib/json/json_reader.o lib/json/json_reader.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/json
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/json/json_reader.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/json/json_reader_nomain.o lib/json/json_reader.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/json/json_reader.o ${OBJECTDIR}/lib/json/json_reader_nomain.o;\
	fi

${OBJECTDIR}/lib/json/json_value_nomain.o: ${OBJECTDIR}/lib/json/json_value.o lib/json/json_value.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/json
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/json/json_value.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/json/json_value_nomain.o lib/json/json_value.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/json/json_value.o ${OBJECTDIR}/lib/json/json_value_nomain.o;\
	fi

${OBJECTDIR}/lib/json/json_writer_nomain.o: ${OBJECTDIR}/lib/json/json_writer.o lib/json/json_writer.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/json
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/json/json_writer.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/json/json_writer_nomain.o lib/json/json_writer.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/json/json_writer.o ${OBJECTDIR}/lib/json/json_writer_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Controller_nomain.o: ${OBJECTDIR}/lib/mongoose/Controller.o lib/mongoose/Controller.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Controller.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Controller_nomain.o lib/mongoose/Controller.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Controller.o ${OBJECTDIR}/lib/mongoose/Controller_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/JsonController_nomain.o: ${OBJECTDIR}/lib/mongoose/JsonController.o lib/mongoose/JsonController.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/JsonController.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/JsonController_nomain.o lib/mongoose/JsonController.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/JsonController.o ${OBJECTDIR}/lib/mongoose/JsonController_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/JsonResponse_nomain.o: ${OBJECTDIR}/lib/mongoose/JsonResponse.o lib/mongoose/JsonResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/JsonResponse.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/JsonResponse_nomain.o lib/mongoose/JsonResponse.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/JsonResponse.o ${OBJECTDIR}/lib/mongoose/JsonResponse_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Mutex_nomain.o: ${OBJECTDIR}/lib/mongoose/Mutex.o lib/mongoose/Mutex.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Mutex.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Mutex_nomain.o lib/mongoose/Mutex.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Mutex.o ${OBJECTDIR}/lib/mongoose/Mutex_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Request_nomain.o: ${OBJECTDIR}/lib/mongoose/Request.o lib/mongoose/Request.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Request.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Request_nomain.o lib/mongoose/Request.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Request.o ${OBJECTDIR}/lib/mongoose/Request_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Response_nomain.o: ${OBJECTDIR}/lib/mongoose/Response.o lib/mongoose/Response.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Response.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Response_nomain.o lib/mongoose/Response.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Response.o ${OBJECTDIR}/lib/mongoose/Response_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Server_nomain.o: ${OBJECTDIR}/lib/mongoose/Server.o lib/mongoose/Server.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Server.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Server_nomain.o lib/mongoose/Server.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Server.o ${OBJECTDIR}/lib/mongoose/Server_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Session_nomain.o: ${OBJECTDIR}/lib/mongoose/Session.o lib/mongoose/Session.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Session.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Session_nomain.o lib/mongoose/Session.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Session.o ${OBJECTDIR}/lib/mongoose/Session_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Sessions_nomain.o: ${OBJECTDIR}/lib/mongoose/Sessions.o lib/mongoose/Sessions.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Sessions.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Sessions_nomain.o lib/mongoose/Sessions.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Sessions.o ${OBJECTDIR}/lib/mongoose/Sessions_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/StreamResponse_nomain.o: ${OBJECTDIR}/lib/mongoose/StreamResponse.o lib/mongoose/StreamResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/StreamResponse.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/StreamResponse_nomain.o lib/mongoose/StreamResponse.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/StreamResponse.o ${OBJECTDIR}/lib/mongoose/StreamResponse_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/UploadFile_nomain.o: ${OBJECTDIR}/lib/mongoose/UploadFile.o lib/mongoose/UploadFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/UploadFile.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/UploadFile_nomain.o lib/mongoose/UploadFile.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/UploadFile.o ${OBJECTDIR}/lib/mongoose/UploadFile_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/Utils_nomain.o: ${OBJECTDIR}/lib/mongoose/Utils.o lib/mongoose/Utils.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/Utils.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/Utils_nomain.o lib/mongoose/Utils.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/Utils.o ${OBJECTDIR}/lib/mongoose/Utils_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/WebController_nomain.o: ${OBJECTDIR}/lib/mongoose/WebController.o lib/mongoose/WebController.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/WebController.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/WebController_nomain.o lib/mongoose/WebController.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/WebController.o ${OBJECTDIR}/lib/mongoose/WebController_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/WebSocket_nomain.o: ${OBJECTDIR}/lib/mongoose/WebSocket.o lib/mongoose/WebSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/WebSocket.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/WebSocket_nomain.o lib/mongoose/WebSocket.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/WebSocket.o ${OBJECTDIR}/lib/mongoose/WebSocket_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/WebSockets_nomain.o: ${OBJECTDIR}/lib/mongoose/WebSockets.o lib/mongoose/WebSockets.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/WebSockets.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/WebSockets_nomain.o lib/mongoose/WebSockets.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/WebSockets.o ${OBJECTDIR}/lib/mongoose/WebSockets_nomain.o;\
	fi

${OBJECTDIR}/lib/mongoose/mongoose_nomain.o: ${OBJECTDIR}/lib/mongoose/mongoose.o lib/mongoose/mongoose.c 
	${MKDIR} -p ${OBJECTDIR}/lib/mongoose
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/mongoose/mongoose.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/mongoose/mongoose_nomain.o lib/mongoose/mongoose.c;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/mongoose/mongoose.o ${OBJECTDIR}/lib/mongoose/mongoose_nomain.o;\
	fi

${OBJECTDIR}/main_nomain.o: ${OBJECTDIR}/main.o main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../../phidget -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main_nomain.o main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/main.o ${OBJECTDIR}/main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cdirigeable

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
