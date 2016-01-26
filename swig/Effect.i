%include "types.i"

namespace dgmpp {

extern const TypeID ONLINE_EFFECT_ID;
extern const TypeID LO_POWER_EFFECT_ID;
extern const TypeID HI_POWER_EFFECT_ID;
extern const TypeID MED_POWER_EFFECT_ID;
extern const TypeID RIG_SLOT_EFFECT_ID;
extern const TypeID SUBSYSTEM_EFFECT_ID;
extern const TypeID TURRET_FITTED_EFFECT_ID;
extern const TypeID LAUNCHER_FITTED_EFFECT_ID;

extern const TypeID MINING_LASER_EFFECT_ID;
extern const TypeID POWER_BOOSTER_EFFECT_ID;
extern const TypeID PROJECTILE_FIRED_EFFECT_ID;
extern const TypeID TARGET_ATTACK_EFFECT_ID;
extern const TypeID USE_MISSILES_EFFECT_ID;

extern const TypeID LEECH_EFFECT_ID;
extern const TypeID ENERGY_NOSFERATU_FALLOFF;
extern const TypeID ENERGY_DESTABILIZATION_NEW_EFFECT_ID;
extern const TypeID ENERGY_DESTABILIZATION_NEW_EFFECT_ID;
extern const TypeID ENERGY_TRANSFER_EFFECT_ID;

extern const TypeID WARP_DISRUPTION_FIELD_EFFECT_ONLINE_EFFECT_ID;

extern const TypeID ARMOR_REPAIR_EFFECT_ID;
extern const TypeID TARGET_ARMOR_REPAIR_EFFECT_ID;
extern const TypeID SHIELD_BOOSTING_EFFECT_ID;
extern const TypeID SHIELD_TRANSFER_EFFECT_ID;
extern const TypeID STRUCTURE_REPAIR_EFFECT_ID;
extern const TypeID REMOTE_HULL_REPAIR_EFFECT_ID;
extern const TypeID SLOT_MODIFIER_EFFECT_ID;
extern const TypeID SLOT_MODIFIER_EFFECT_ID;
extern const TypeID HARD_POINT_MODIFIER_EFFECT_EFFECT_ID;

extern const TypeID ONLINE_FOR_STRUCTURES_EFFECT_ID;

extern const TypeID ADAPTIVE_ARMOR_HARDENER_EFFECT_ID;
extern const TypeID FUELED_SHIELD_BOOSTING_EFFECT_ID;
extern const TypeID FUELED_ARMOR_REPAIR__EFFECT_ID;

extern const TypeID TACTICAL_MODE_EFFECT_ID;
extern const TypeID NANITE_REPAIR_PASTE_ARMOR_DAMAGE_BONUS_EFFECT_ID;


	%nodefaultctor Effect;

	class Effect
	{

	public:
		enum Category
		{
			CATEGORY_GENERIC			= 0,
			CATEGORY_ACTIVE			= 1, //also online effect
			CATEGORY_TARGET			= 2,
			CATEGORY_PASSIVE			= 4,
			CATEGORY_OVERLOADED		= 5,
			CATEGORY_DUNGEON			= 6,
			CATEGORY_SYSTEM			= 7
		};


		dgmpp::TypeID getEffectID() const;
		Category getCategory() const;
		const char* getEffectName() const;
		bool isAssistance() const;
		bool isOffensive() const;
	};
}
