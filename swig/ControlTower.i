
namespace dgmpp {

	%nodefaultctor ControlTower;

	class ControlTower : public dgmpp::Item
	{
	public:
		std::shared_ptr<dgmpp::Structure> addStructure(dgmpp::TypeID typeID);
		void removeStructure(std::shared_ptr<dgmpp::Structure> structure);

		const std::list<std::shared_ptr<dgmpp::Structure>>& getStructures();
		bool canFit(std::shared_ptr<dgmpp::Structure> structure);

		const dgmpp::DamagePattern& getDamagePattern();
		void setDamagePattern(const dgmpp::DamagePattern& damagePattern);

		//Calculations

		float getPowerGridUsed();
		float getTotalPowerGrid();
		float getCpuUsed();
		float getTotalCpu();

		//Tank
		const dgmpp::Resistances& getResistances();
		const dgmpp::Tank& getTank();
		const dgmpp::Tank& getEffectiveTank();

		const dgmpp::HitPoints& getHitPoints();
		const dgmpp::HitPoints& getEffectiveHitPoints();

		float getShieldRecharge();

		//DPS
		float getWeaponDps();
		float getWeaponVolley();
	};
}
