%include "Item.i"

namespace dgmpp {

	%nodefaultctor Area;

	class Area : public dgmpp::Item
	{
		public:
			void addEffectsToShip(std::shared_ptr<dgmpp::Item> const& ship);
			void removeEffectsFromShip(std::shared_ptr<dgmpp::Item> const& ship);

			virtual void addEffects(dgmpp::Effect::Category category);
			virtual void removeEffects(dgmpp::Effect::Category category);
	};

}
