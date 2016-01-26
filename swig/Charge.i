%include "Item.i"

namespace dgmpp {

	%nodefaultctor Charge;

	class Charge : public dgmpp::Item
	{
		public:
			bool isAssistance();
			bool isOffensive();
	};
}
