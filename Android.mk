LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


LOCAL_MODULE := dgmpp
LOCAL_CPP_EXTENSION := .cxx .cpp .cc .hpp

LOCAL_CPP_FEATURES := exceptions rtti

LOCAL_CPPFLAGS := -fpermissive
LOCAL_LDLIBS += -latomic

LOCAL_C_INCLUDES := ThirdParty

LOCAL_SRC_FILES := \
Item.cpp \
dgmpp_wrap.cxx \
ThirdParty/sqlite3.c \
Area.cpp \
Attribute.cpp \
AttributePrototype.cpp \
Blob.cpp \
Booster.cpp \
CapacitorSimulator.cpp \
Character.cpp \
Charge.cpp \
CombatSimulator.cpp \
ControlTower.cpp \
DamagePattern.cpp \
DamageVector.cpp \
Drone.cpp \
Effect.cpp \
EffectPrototype.cpp \
Engine.cpp \
Environment.cpp \
FetchRequest.cpp \
FetchResult.cpp \
Gang.cpp \
HeatSimulator.cpp \
HostileTarget.cpp \
Implant.cpp \
LocationGroupModifier.cpp \
LocationRequiredSkillModifier.cpp \
Modifier.cpp \
Module.cpp \
Ship.cpp \
Skill.cpp \
Structure.cpp \
SqliteFetchRequest.cpp \
SqliteFetchResult.cpp \
SqlConnector.cpp \
SqliteConnector.cpp \


include $(BUILD_SHARED_LIBRARY)
