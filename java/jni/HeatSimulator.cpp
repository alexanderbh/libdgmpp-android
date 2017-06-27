#include "HeatSimulator.h"
#include "Ship.h"
#include "Module.h"
#include "Attribute.h"
#include <math.h>
#include <algorithm>

using namespace dgmpp;

class StateCompareFunction : public std::binary_function<std::shared_ptr<const HeatSimulator::State> const&, std::shared_ptr<const HeatSimulator::State> const&, bool>
{
public:
	bool operator() (std::shared_ptr<const HeatSimulator::State> const& a, std::shared_ptr<const HeatSimulator::State> const& b)
	{
		return a->tNow > b->tNow;
	}
};

HeatSimulator::HeatSimulator(std::shared_ptr<Ship> const& ship) : ship_(ship)
{
}

HeatSimulator::~HeatSimulator(void)
{
	states_.clear();
}

void HeatSimulator::reset()
{
	isCalculated_ = false;
}


void HeatSimulator::simulate()
{
	if (!isCalculated_)
	{
		std::shared_ptr<Ship> ship = ship_.lock();
		if (!ship)
			return;
		
		for (auto slot: {Module::SLOT_HI, Module::SLOT_MED, Module::SLOT_LOW}) {
			simulate(ship->getModules(slot, true));
		}
		
		isCalculated_ = true;
	}
}

void HeatSimulator::simulate(const ModulesList& modules)
{
	if (modules.size() == 0)
		return;
	
	states_.clear();

	std::shared_ptr<Ship> ship = ship_.lock();
	if (!ship)
		return;
	std::shared_ptr<Module> module = modules.front();
	Module::Slot slot = module->getSlot();
	Float heatCapacity = 0;
	Float heatGenerationMultiplier = ship->getAttribute(HEAT_GENERATION_MULTIPLIER_ATTRIBUTE_ID)->getValue();
	Float heatAttenuation = 0;
	Float heatGeneration = 0;
	Float heatAbsorbtionRateModifier = 0;
	int numberOfSlots = ship->getNumberOfSlots(slot);
	int numberOfOnlineModules = 0;
	
	if (slot == Module::SLOT_HI)
	{
		heatCapacity = ship->getAttribute(HEAT_CAPACITY_HI_ATTRIBUTE_ID)->getValue() / 100.0;
		heatAttenuation = ship->getAttribute(HEAT_ATTENUATION_HI_ATTRIBUTE_ID)->getValue();
	}
	else if (slot == Module::SLOT_MED)
	{
		heatCapacity = ship->getAttribute(HEAT_CAPACITY_MED_ATTRIBUTE_ID)->getValue() / 100.0;
		heatAttenuation = ship->getAttribute(HEAT_ATTENUATION_MED_ATTRIBUTE_ID)->getValue();
	}
	else if (slot == Module::SLOT_LOW)
	{
		heatCapacity = ship->getAttribute(HEAT_CAPACITY_LOW_ATTRIBUTE_ID)->getValue() / 100.0;
		heatAttenuation = ship->getAttribute(HEAT_ATTENUATION_LOW_ATTRIBUTE_ID)->getValue();
	}
	
	int n = (int) modules.size();
	std::vector<Float> modulesHP(n);

	for (int i = 0; i < n; i++)
	{
		std::shared_ptr<Module> module = modules[i];
		if (module->isDummy())
			continue;
		
		modulesHP[i] = module->getAttribute(HP_ATTRIBUTE_ID)->getValue();
		Module::State state = module->getState();
		if (state >= Module::STATE_ONLINE)
			numberOfOnlineModules++;
		if (state == Module::STATE_OVERLOADED)
		{
			heatAbsorbtionRateModifier += module->getAttribute(HEAT_ABSORBTION_RATE_MODIFIER_ATTRIBUTE_ID)->getValue();
			int clipSize = module->getShots();

			std::shared_ptr<State> state = std::make_shared<State>();
			state->tNow = 0;
			state->duration = static_cast<int>(module->getCycleTime() * 1000.0);
			state->clipSize = clipSize;
			state->shot = 0;
			state->reloadTime = static_cast<int>(module->getReloadTime());
			state->moduleIndex = i;
			state->heatDamage = module->getAttribute(HEAT_DAMAGE_ATTRIBUTE_ID)->getValue();
			states_.push_back(state);
			std::push_heap(states_.begin(), states_.end(), StateCompareFunction());
		}
	}
	heatGeneration = heatAbsorbtionRateModifier * heatGenerationMultiplier;
	
	if (states_.size() > 0)
	{
		int tNow = 0;
		std::shared_ptr<State> state;

		while (1)
		{
			state = states_.front();
			std::pop_heap(states_.begin(), states_.end(), StateCompareFunction());
			states_.pop_back();

			tNow = state->tNow;
			
			Float h = heat(static_cast<Float>(tNow), heatCapacity, heatGeneration);
			int numberOfDeadModules = 0;
			for (int i = 0; i < n; i++)
			{
				if (modulesHP[i] > 0)
				{
					int range = abs(i - state->moduleIndex);
					modulesHP[i] -= damageProbability(h, range, numberOfOnlineModules, numberOfSlots, heatAttenuation) * state->heatDamage;
					if (modulesHP[i] <= 0.0)
					{
						modules[i]->setLifeTime(tNow / 1000.0);
						numberOfDeadModules++;
					}
				}
				else
					numberOfDeadModules++;
			}
			
			if (numberOfDeadModules == n)
				break;
			
			tNow += state->duration;
			state->shot++;
			
			if (state->clipSize) {
				if (state->shot % state->clipSize == 0) {
					state->shot = 0;
					tNow += state->reloadTime;
				}
			}
			state->tNow = tNow;
			states_.push_back(state);
			std::push_heap(states_.begin(), states_.end(), StateCompareFunction());
		}
	}
}

Float HeatSimulator::heat(Float t, Float heatCapacity, Float heatGeneration)
{
	return heatCapacity - exp(-t * heatGeneration);
}

Float HeatSimulator::damageProbability(Float h, int range, int numberOfOnlineModules, int numberOfSlots, Float heatAttenuation)
{
	return (float) numberOfOnlineModules / (float) numberOfSlots * h * pow(heatAttenuation, range);
}
