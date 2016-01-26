namespace dgmpp {

	%nodefaultctor Engine;

	class Engine
	{
		public:
		Engine(std::shared_ptr<dgmpp::SqlConnector>& sqlConnector);
		~Engine(void);
		std::shared_ptr<dgmpp::SqlConnector> getSqlConnector();
		std::shared_ptr<dgmpp::Area> setArea(dgmpp::TypeID typeID);
		std::shared_ptr<dgmpp::ControlTower> setControlTower(dgmpp::TypeID typeID);
		void clearArea();
		std::shared_ptr<dgmpp::Gang> getGang();
		std::shared_ptr<dgmpp::Area> getArea();
		std::shared_ptr<dgmpp::ControlTower> getControlTower();
	};

}
