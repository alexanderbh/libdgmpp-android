
namespace dgmpp {

	%nodefaultctor Drone;

	class Drone : public dgmpp::Item
	{
	public:
		void setTarget(std::shared_ptr<dgmpp::Ship> target = NULL);
		void clearTarget();
		std::shared_ptr<dgmpp::Ship> getTarget();

		bool dealsDamage();
		std::shared_ptr<dgmpp::Charge> getCharge();

		void setActive(bool active);
		bool isActive();
		bool isAssistance();
		bool isOffensive();

		//Calculations

		float getCycleTime();

		dgmpp::DamageVector getVolley();
		dgmpp::DamageVector getDps(const dgmpp::HostileTarget& target = dgmpp::HostileTarget::defaultTarget);
		float getMaxRange();
		float getFalloff();
		float getTrackingSpeed();
	};

}
