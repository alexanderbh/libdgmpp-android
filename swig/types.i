%include <std_map.i>
%include <std_vector.i>
%include <std_string.i>
%include <std_list.i>
%include <std_shared_ptr.i>

%shared_ptr(dgmpp::Area);
%shared_ptr(dgmpp::Attribute);
%shared_ptr(dgmpp::Booster);
%shared_ptr(dgmpp::Character);
%shared_ptr(dgmpp::Charge);
%shared_ptr(dgmpp::ControlTower);
%shared_ptr(dgmpp::Effect);
%shared_ptr(dgmpp::Gang);
%shared_ptr(dgmpp::Engine);
%shared_ptr(dgmpp::Implant);
%shared_ptr(dgmpp::Item);
%shared_ptr(dgmpp::Module);
%shared_ptr(dgmpp::Ship);
%shared_ptr(dgmpp::Skill);
%shared_ptr(dgmpp::SqlConnector);
%shared_ptr(dgmpp::SqliteConnector);
%shared_ptr(dgmpp::Structure);
%shared_ptr(dgmpp::Drone);

namespace dgmpp {
	typedef int TypeID;
}

namespace std {
	%template(TypesList) vector<dgmpp::TypeID>;
	%template(AttributesMap) map<dgmpp::TypeID, std::shared_ptr<dgmpp::Attribute>>;
	%template(ModulesList) list<std::shared_ptr<dgmpp::Module>>;
	%template(DronesList) list<std::shared_ptr<dgmpp::Drone>>;
	%template(EffectsList) list<std::shared_ptr<dgmpp::Effect>>;
	%template(CharactersList) list<std::shared_ptr<dgmpp::Character>>;
	%template(SkillsMap) map<dgmpp::TypeID, std::shared_ptr<dgmpp::Skill>>;
	%template(ImplantsList) list<std::shared_ptr<dgmpp::Implant>>;
	%template(BoostersList) list<std::shared_ptr<dgmpp::Booster>>;
	%template(ModifiersList) list<std::shared_ptr<dgmpp::Modifier>>;
	%template(StructuresList) list<std::shared_ptr<dgmpp::Structure>>;
}
namespace dgmpp {

	using namespace std;

	typedef map<dgmpp::TypeID, std::shared_ptr<dgmpp::Attribute>> AttributesMap;
	typedef map<dgmpp::TypeID, std::shared_ptr<dgmpp::Skill>> SkillsMap;

	struct Tank
	{
		float armorRepair;
		float hullRepair;
		float shieldRepair;
		float passiveShield;
	};

	struct HitPoints
	{
		float armor;
		float hull;
		float shield;
	};

	struct ResistancesLayer
	{
		float em;
		float explosive;
		float kinetic;
		float thermal;
	};

	struct Resistances
	{
		ResistancesLayer armor, hull, shield;
	};
}
