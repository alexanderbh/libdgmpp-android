
namespace dgmpp {

	class DamagePattern
	{
	public:
		DamagePattern();
		DamagePattern(float em, float thermal, float kinetic, float explosive);
		~DamagePattern(void);

		dgmpp::HitPoints effectiveHitPoints(const dgmpp::Resistances& resistances, const dgmpp::HitPoints& hitPoints) const;
		dgmpp::Tank effectiveTank(const dgmpp::Resistances& resistances, const dgmpp::Tank& tank) const;

	};
}
