%include "types.i"
%include "Attribute.i"

namespace dgmpp {

	extern const TypeID ANY_GROUP_ID;
	extern const TypeID CHARACTER_GROUP_ID;
	extern const TypeID WARP_DISRUPT_FIELD_GENERATOR_GROUP_ID;
	extern const TypeID CAPACITOR_BOOSTER_GROUP_ID;
	extern const TypeID CONTROL_TOWER_GROUP_ID;
	extern const TypeID CAPACITOR_BOOSTER_CHARGE_GROUP_ID;
	extern const TypeID NANITE_REPAIR_PASTE_GROUP_ID;

	extern const TypeID MODULE_CATEGORY_ID;
	extern const TypeID CHARGE_CATEGORY_ID;
	extern const TypeID DRONE_CATEGORY_ID;
	extern const TypeID SUBSYSTEM_CATEGORY_ID;
	extern const TypeID STRUCTURE_CATEGORY_ID;

	extern const TypeID MISSILE_LAUNCHER_OPERATION_TYPE_ID;

	%nodefaultctor Item;

	class Item
	{
		public:
		std::shared_ptr<dgmpp::Engine> getEngine();

		std::shared_ptr<dgmpp::Item> getOwner() const;


		virtual dgmpp::TypeID getTypeID();
		virtual dgmpp::TypeID getGroupID();
		virtual dgmpp::TypeID getCategoryID();
		virtual const std::shared_ptr<dgmpp::Attribute> getAttribute(dgmpp::TypeID attributeID);
		const dgmpp::AttributesMap &getAttributes();
		bool hasAttribute(dgmpp::TypeID attributeID);
		std::shared_ptr<dgmpp::Effect> getEffect(dgmpp::TypeID effectID);

		virtual bool requireSkill(dgmpp::TypeID skillID);
		const std::vector<dgmpp::TypeID>& requiredSkills();

		bool hasEffect(dgmpp::TypeID effectID);
		virtual void addEffects(dgmpp::Effect::Category category);
		virtual void removeEffects(dgmpp::Effect::Category category);

		const std::list<std::shared_ptr<dgmpp::Effect>>& getEffects();

		virtual const char* getTypeName();
		virtual const char* getGroupName();

		//std::set<std::shared_ptr<Item>> getAffectors();
	};
}
