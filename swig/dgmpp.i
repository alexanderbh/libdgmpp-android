%module dgmpp

%{
#include "dgmpp.h"
using namespace std;
%}

%include "types.i"
%include "Engine.i"
%include "Attribute.i"
%include "Item.i"
%include "Area.i"
%include "Gang.i"
%include "HostileTarget.i"
%include "Ship.i"
%include "Effect.i"
%include "Charge.i"
%include "Character.i"
%include "Skill.i"
%include "Booster.i"
%include "Implant.i"
%include "Ship.i"
%include "Module.i"
%include "Drone.i"
%include "DamagePattern.i"
%include "DamageVector.i"
%include "ControlTower.i"
%include "Structure.i"
%include "SqlConnector.i"
%include "SqliteConnector.i"
