%include "types.i"
%include "Item.i"
%include "Character.i"

namespace dgmpp {

	%nodefaultctor Gang;

	class Gang : public dgmpp::Item
	{
		public:
		const std::list<std::shared_ptr<dgmpp::Character>>& getPilots();

		std::shared_ptr<dgmpp::Character> addPilot();
		void removePilot(std::shared_ptr<dgmpp::Character> const& character);
		std::shared_ptr<dgmpp::Character> getFleetBooster();
		std::shared_ptr<dgmpp::Character> getWingBooster();
		std::shared_ptr<dgmpp::Character> getSquadBooster();
		void setFleetBooster(std::shared_ptr<dgmpp::Character> const& fleetBooster);
		void setWingBooster(std::shared_ptr<dgmpp::Character> const& wingBooster);
		void setSquadBooster(std::shared_ptr<dgmpp::Character> const& squadBooster);
		void removeFleetBooster();
		void removeWingBooster();
		void removeSquadBooster();
	};

}
