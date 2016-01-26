%include "Item.i"

namespace dgmpp {

	%nodefaultctor Module;

	class Module : public Item
	{
	public:
		enum Slot
		{
			SLOT_UNKNOWN = -1,
			SLOT_NONE = 0,
			SLOT_HI,
			SLOT_MED,
			SLOT_LOW,
			SLOT_RIG,
			SLOT_SUBSYSTEM,
			SLOT_STRUCTURE,
			SLOT_MODE
		};

		enum State
		{
			STATE_UNKNOWN = -1,
			STATE_OFFLINE,
			STATE_ONLINE,
			STATE_ACTIVE,
			STATE_OVERLOADED
		};

		enum Hardpoint
		{
			HARDPOINT_NONE = 0,
			HARDPOINT_LAUNCHER,
			HARDPOINT_TURRET
		};

		Slot getSlot();
		Hardpoint getHardpoint();
		virtual bool canHaveState(State state);
		State getState();
		State getPreferredState();
		void setPreferredState(State state);
		bool canBeOnline() {return canBeOnline_;};
		bool canBeActive() {return canBeActive_;};
		bool canBeOverloaded() {return canBeOverloaded_;};
		bool isAssistance();
		bool isOffensive();

		virtual void addEffects(dgmpp::Effect::Category category);
		virtual void removeEffects(dgmpp::Effect::Category category);

		virtual void reset();

		std::shared_ptr<dgmpp::Charge> setCharge(dgmpp::TypeID typeID);
		void clearCharge();
		std::shared_ptr<dgmpp::Charge> getCharge();
		const std::vector<dgmpp::TypeID>& getChargeGroups();
		int getChargeSize();
		bool canFit(std::shared_ptr<dgmpp::Charge> const& charge);
		bool requireTarget();
		void setTarget(std::shared_ptr<dgmpp::Ship> const& target = NULL);
		void clearTarget();
		std::shared_ptr<dgmpp::Ship> getTarget();
		float getReloadTime();

		//Calculations

		float getCycleTime();
		float getRawCycleTime();
		bool factorReload();
	void setFactorReload(bool factorReload);


		int getCharges();
		int getShots();
		float getCapUse();

		dgmpp::DamageVector getVolley();
		dgmpp::DamageVector getDps(const dgmpp::HostileTarget& target = HostileTarget::defaultTarget);
		float getMaxRange();
		float getFalloff();
		float getTrackingSpeed();

		float getLifeTime();
		void setLifeTime(float lifeTime);

		void setEnabled(bool enabled);
		bool isEnabled();
		protected:
		void setState(State state);
	};
}
