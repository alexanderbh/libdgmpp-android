%include "Skill.i"
%include "Booster.i"
%include "Implant.i"
%include "Skill.i"
%include <std_map.i>

namespace std {
	%template(SkillLevelsMap) map<dgmpp::TypeID, int>;
}

namespace dgmpp {



	%nodefaultctor Character;

	class Character : public Item
	{
	public:
		std::shared_ptr<dgmpp::Ship> getShip();
		std::shared_ptr<dgmpp::Ship> setShip(dgmpp::TypeID typeID);

		virtual void reset();

		std::shared_ptr<dgmpp::Skill> getSkill(dgmpp::TypeID typeID);

		bool emptyImplantSlot(int slot);
		bool emptyBoosterSlot(int slot);
		std::shared_ptr<dgmpp::Implant> getImplant(int slot);
		std::shared_ptr<dgmpp::Booster> getBooster(int slot);
		std::shared_ptr<dgmpp::Implant> addImplant(dgmpp::TypeID typeID, bool forced = false);
		std::shared_ptr<dgmpp::Booster> addBooster(dgmpp::TypeID typeID, bool forced = false);
		void removeImplant(std::shared_ptr<dgmpp::Implant> const& implant);
		void removeBooster(std::shared_ptr<dgmpp::Booster> const& booster);

		const std::list<std::shared_ptr<dgmpp::Booster>>& getBoosters();
		const std::list<std::shared_ptr<dgmpp::Implant>>& getImplants();

		void setCharacterName(const char* characterName = "");
		const char* getCharacterName();
		void setSkillLevels(const std::map<dgmpp::TypeID, int>& levels);
		void setAllSkillsLevel(int level);
	};
}
