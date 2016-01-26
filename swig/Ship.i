%include "DamagePattern.i"

namespace dgmpp {


	%nodefaultctor Ship;

	class Ship : public dgmpp::Item
	{
	public:
		enum ScanType
		{
			SCAN_TYPE_RADAR,
			SCAN_TYPE_LADAR,
			SCAN_TYPE_MAGNETOMETRIC,
			SCAN_TYPE_GRAVIMETRIC,
			SCAN_TYPE_MULTISPECTRAL
		};

		std::shared_ptr<dgmpp::Module> addModule(dgmpp::TypeID typeID, bool forced = false);
		std::shared_ptr<dgmpp::Module> replaceModule(std::shared_ptr<dgmpp::Module> const& oldModule, dgmpp::TypeID typeID);
		//dgmpp::ModulesList addModules(const std::list<dgmpp::TypeID>& typeIDs);
		void removeModule(std::shared_ptr<dgmpp::Module> const& module);

		std::shared_ptr<dgmpp::Drone> addDrone(dgmpp::TypeID typeID);
		void removeDrone(std::shared_ptr<dgmpp::Drone> const& drone);

		
		const std::list<std::shared_ptr<dgmpp::Module>>& getModules();
		const std::list<std::shared_ptr<dgmpp::Drone>>& getDrones();


		bool canFit(std::shared_ptr<dgmpp::Module> const& module);
		bool isDisallowedAssistance();
		bool isDisallowedOffensiveModifiers();

		virtual void reset();

		virtual void addEffects(dgmpp::Effect::Category category);
		virtual void removeEffects(dgmpp::Effect::Category category);

		void addProjectedModule(std::shared_ptr<dgmpp::Module> const& module);
		void removeProjectedModule(std::shared_ptr<dgmpp::Module> const& module);
		void addProjectedDrone(std::shared_ptr<dgmpp::Drone> const& drone);
		void removeProjectedDrone(std::shared_ptr<dgmpp::Drone> const& drone);

		//std::shared_ptr<dgmpp::CapacitorSimulator> getCapacitorSimulator();
		//std::shared_ptr<dgmpp::HeatSimulator> getHeatSimulator();
		const dgmpp::DamagePattern& getDamagePattern();
		void setDamagePattern(const dgmpp::DamagePattern& damagePattern);

		//Calculations

		int getNumberOfSlots(dgmpp::Module::Slot slot);
		int getFreeSlots(dgmpp::Module::Slot slot);
		int getUsedSlots(dgmpp::Module::Slot slot);
		int getNumberOfHardpoints(dgmpp::Module::Hardpoint hardpoint);
		int getFreeHardpoints(dgmpp::Module::Hardpoint hardpoint);
		int getUsedHardpoints(dgmpp::Module::Hardpoint hardpoint);

		float getCalibrationUsed();
		float getTotalCalibration();
		float getPowerGridUsed();
		float getTotalPowerGrid();
		float getCpuUsed();
		float getTotalCpu();
		float getDroneBandwidthUsed();
		float getTotalDroneBandwidth();
		float getDroneBayUsed();
		float getTotalDroneBay();


		//Capacitor
		float getCapCapacity();
		bool isCapStable();
		float getCapLastsTime();
		float getCapStableLevel();
		float getCapUsed();
		float getCapRecharge();

		//Tank
		const dgmpp::Resistances& getResistances();
		const dgmpp::Tank& getTank();
		const dgmpp::Tank& getEffectiveTank();
		const dgmpp::Tank& getSustainableTank();
		const dgmpp::Tank& getEffectiveSustainableTank();

		const dgmpp::HitPoints& getHitPoints();
		const dgmpp::HitPoints& getEffectiveHitPoints();

		float getShieldRecharge();

		//DPS
		dgmpp::DamageVector getWeaponDps(const dgmpp::HostileTarget& target = dgmpp::HostileTarget::defaultTarget);
		dgmpp::DamageVector getWeaponVolley();
		dgmpp::DamageVector getDroneDps(const dgmpp::HostileTarget& target = dgmpp::HostileTarget::defaultTarget);
		dgmpp::DamageVector getDroneVolley();

		//Mobility
		float getAlignTime();
		float getWarpSpeed();
		float getMaxWarpDistance();
		float getVelocity();
		float getSignatureRadius();
		float getMass();
		float getVolume();
		float getAgility();
		float getMaxVelocityInOrbit(float r);
		float getOrbitRadiusWithTransverseVelocity(float v);
		float getOrbitRadiusWithAngularVelocity(float v);

		//Targeting
		int getMaxTargets();
		float getMaxTargetRange();
		float getScanStrength();
		ScanType getScanType();
		float getProbeSize();
		float getScanResolution();

		//Drones
		int getMaxActiveDrones();
		int getActiveDrones();

		//Other
		void updateHeatDamage();

	};
}
