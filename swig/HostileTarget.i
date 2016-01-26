%include "types.i"
%include "Item.i"
%include "Character.i"

namespace dgmpp {

	%nodefaultctor HostileTarget;

	class HostileTarget
	{
		public:
		HostileTarget(float range = 0, float angularVelocity = 0, float signature = 0, float velocity = 0);
		float angularVelocity;
		float velocity;
		float signature;
		float range;

	};

}
