LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


LOCAL_MODULE := dgmpp
LOCAL_CPP_EXTENSION := .cxx .cpp .cc .hpp

LOCAL_CPP_FEATURES := exceptions rtti

LOCAL_CPPFLAGS := -fpermissive
LOCAL_LDLIBS += -latomic

LOCAL_C_INCLUDES := SDE

LOCAL_SRC_FILES := \
Area.cpp \
Attribute.cpp \
Booster.cpp \
Capacitor.cpp \
Character.cpp \
Charge.cpp \
CommandCenter.cpp \
Commodity.cpp \
Drone.cpp \
Effect.cpp \
ExtractorControlUnit.cpp \
Facility.cpp \
Factory.cpp \
Gang.cpp \
HeatSimulator.cpp \
Implant.cpp \
Modifier.cpp \
Module.cpp \
Planet.cpp \
ProductionCycle.cpp \
ProductionState.cpp \
Route.cpp \
SDE.cpp \
Ship.cpp \
Skill.cpp \
Spaceport.cpp \
Storage.cpp  \
Structure.cpp \
Type.cpp \
WarfareBuff.cpp \
dgmpp_wrap.cxx \

include $(BUILD_SHARED_LIBRARY)
