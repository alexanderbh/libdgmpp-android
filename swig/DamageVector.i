
namespace dgmpp {

	%nodefaultctor DamageVector;

	class DamageVector
	{
	public:
		DamageVector(float value = 0);
		DamageVector(float em, float thermal, float kinetic, float explosive);

		dgmpp::DamageVector effectiveDamage(const dgmpp::ResistancesLayer& resistances) const;

		%extend {
			float getFloat() {
				return (float)*$self;
			}
		}
	};
}
