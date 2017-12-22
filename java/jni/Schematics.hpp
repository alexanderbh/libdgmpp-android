#pragma once
#include "Commodities.hpp"

namespace dgmpp {
	namespace SDE {
		namespace Schematics {
			using namespace std::chrono_literals;
			constexpr auto superconductors = MakeSchematic(SchematicID::superconductors, 3600s, _C(&Commodities::superconductors, 5), _inputs(_C(&Commodities::plasmoids, 40), _C(&Commodities::water, 40)));
			constexpr auto coolant = MakeSchematic(SchematicID::coolant, 3600s, _C(&Commodities::coolant, 5), _inputs(_C(&Commodities::electrolytes, 40), _C(&Commodities::water, 40)));
			constexpr auto rocketFuel = MakeSchematic(SchematicID::rocketFuel, 3600s, _C(&Commodities::rocketFuel, 5), _inputs(_C(&Commodities::plasmoids, 40), _C(&Commodities::electrolytes, 40)));
			constexpr auto syntheticOil = MakeSchematic(SchematicID::syntheticOil, 3600s, _C(&Commodities::syntheticOil, 5), _inputs(_C(&Commodities::electrolytes, 40), _C(&Commodities::oxygen, 40)));
			constexpr auto oxides = MakeSchematic(SchematicID::oxides, 3600s, _C(&Commodities::oxides, 5), _inputs(_C(&Commodities::oxidizingCompound, 40), _C(&Commodities::oxygen, 40)));
			constexpr auto silicateGlass = MakeSchematic(SchematicID::silicateGlass, 3600s, _C(&Commodities::silicateGlass, 5), _inputs(_C(&Commodities::oxidizingCompound, 40), _C(&Commodities::silicon, 40)));
			constexpr auto transmitter = MakeSchematic(SchematicID::transmitter, 3600s, _C(&Commodities::transmitter, 5), _inputs(_C(&Commodities::plasmoids, 40), _C(&Commodities::chiralStructures, 40)));
			constexpr auto waterCooledCPU = MakeSchematic(SchematicID::waterCooledCPU, 3600s, _C(&Commodities::waterCooledCPU, 5), _inputs(_C(&Commodities::reactiveMetals, 40), _C(&Commodities::water, 40)));
			constexpr auto mechanicalParts = MakeSchematic(SchematicID::mechanicalParts, 3600s, _C(&Commodities::mechanicalParts, 5), _inputs(_C(&Commodities::reactiveMetals, 40), _C(&Commodities::preciousMetals, 40)));
			constexpr auto constructionBlocks = MakeSchematic(SchematicID::constructionBlocks, 3600s, _C(&Commodities::constructionBlocks, 5), _inputs(_C(&Commodities::reactiveMetals, 40), _C(&Commodities::toxicMetals, 40)));
			constexpr auto enrichedUranium = MakeSchematic(SchematicID::enrichedUranium, 3600s, _C(&Commodities::enrichedUranium, 5), _inputs(_C(&Commodities::preciousMetals, 40), _C(&Commodities::toxicMetals, 40)));
			constexpr auto consumerElectronics = MakeSchematic(SchematicID::consumerElectronics, 3600s, _C(&Commodities::consumerElectronics, 5), _inputs(_C(&Commodities::toxicMetals, 40), _C(&Commodities::chiralStructures, 40)));
			constexpr auto miniatureElectronics = MakeSchematic(SchematicID::miniatureElectronics, 3600s, _C(&Commodities::miniatureElectronics, 5), _inputs(_C(&Commodities::chiralStructures, 40), _C(&Commodities::silicon, 40)));
			constexpr auto nanites = MakeSchematic(SchematicID::nanites, 3600s, _C(&Commodities::nanites, 5), _inputs(_C(&Commodities::bacteria, 40), _C(&Commodities::reactiveMetals, 40)));
			constexpr auto biocells = MakeSchematic(SchematicID::biocells, 3600s, _C(&Commodities::biocells, 5), _inputs(_C(&Commodities::biofuels, 40), _C(&Commodities::preciousMetals, 40)));
			constexpr auto microfiberShielding = MakeSchematic(SchematicID::microfiberShielding, 3600s, _C(&Commodities::microfiberShielding, 5), _inputs(_C(&Commodities::industrialFibers, 40), _C(&Commodities::silicon, 40)));
			constexpr auto viralAgent = MakeSchematic(SchematicID::viralAgent, 3600s, _C(&Commodities::viralAgent, 5), _inputs(_C(&Commodities::bacteria, 40), _C(&Commodities::biomass, 40)));
			constexpr auto fertilizer = MakeSchematic(SchematicID::fertilizer, 3600s, _C(&Commodities::fertilizer, 5), _inputs(_C(&Commodities::bacteria, 40), _C(&Commodities::proteins, 40)));
			constexpr auto geneticallyEnhancedLivestock = MakeSchematic(SchematicID::geneticallyEnhancedLivestock, 3600s, _C(&Commodities::geneticallyEnhancedLivestock, 5), _inputs(_C(&Commodities::proteins, 40), _C(&Commodities::biomass, 40)));
			constexpr auto livestock = MakeSchematic(SchematicID::livestock, 3600s, _C(&Commodities::livestock, 5), _inputs(_C(&Commodities::proteins, 40), _C(&Commodities::biofuels, 40)));
			constexpr auto polytextiles = MakeSchematic(SchematicID::polytextiles, 3600s, _C(&Commodities::polytextiles, 5), _inputs(_C(&Commodities::biofuels, 40), _C(&Commodities::industrialFibers, 40)));
			constexpr auto testCultures = MakeSchematic(SchematicID::testCultures, 3600s, _C(&Commodities::testCultures, 5), _inputs(_C(&Commodities::bacteria, 40), _C(&Commodities::water, 40)));
			constexpr auto supertensilePlastics = MakeSchematic(SchematicID::supertensilePlastics, 3600s, _C(&Commodities::supertensilePlastics, 5), _inputs(_C(&Commodities::oxygen, 40), _C(&Commodities::biomass, 40)));
			constexpr auto polyaramids = MakeSchematic(SchematicID::polyaramids, 3600s, _C(&Commodities::polyaramids, 5), _inputs(_C(&Commodities::oxidizingCompound, 40), _C(&Commodities::industrialFibers, 40)));
			constexpr auto ukomiSuperconductor = MakeSchematic(SchematicID::ukomiSuperconductor, 3600s, _C(&Commodities::ukomiSuperconductors, 3), _inputs(_C(&Commodities::syntheticOil, 10), _C(&Commodities::superconductors, 10)));
			constexpr auto condensates = MakeSchematic(SchematicID::condensates, 3600s, _C(&Commodities::condensates, 3), _inputs(_C(&Commodities::oxides, 10), _C(&Commodities::coolant, 10)));
			constexpr auto cameraDrones = MakeSchematic(SchematicID::cameraDrones, 3600s, _C(&Commodities::cameraDrones, 3), _inputs(_C(&Commodities::silicateGlass, 10), _C(&Commodities::rocketFuel, 10)));
			constexpr auto syntheticSynapses = MakeSchematic(SchematicID::syntheticSynapses, 3600s, _C(&Commodities::syntheticSynapses, 3), _inputs(_C(&Commodities::supertensilePlastics, 10), _C(&Commodities::testCultures, 10)));
			constexpr auto highTechTransmitter = MakeSchematic(SchematicID::highTechTransmitter, 3600s, _C(&Commodities::highTechTransmitters, 3), _inputs(_C(&Commodities::polyaramids, 10), _C(&Commodities::transmitter, 10)));
			constexpr auto gelMatrixBiopaste = MakeSchematic(SchematicID::gelMatrixBiopaste, 3600s, _C(&Commodities::gelMatrixBiopaste, 3), _inputs(_C(&Commodities::oxides, 10), _C(&Commodities::biocells, 10), _C(&Commodities::superconductors, 10)));
			constexpr auto supercomputers = MakeSchematic(SchematicID::supercomputers, 3600s, _C(&Commodities::supercomputers, 3), _inputs(_C(&Commodities::waterCooledCPU, 10), _C(&Commodities::coolant, 10), _C(&Commodities::consumerElectronics, 10)));
			constexpr auto robotics = MakeSchematic(SchematicID::robotics, 3600s, _C(&Commodities::robotics, 3), _inputs(_C(&Commodities::mechanicalParts, 10), _C(&Commodities::consumerElectronics, 10)));
			constexpr auto smartfabUnits = MakeSchematic(SchematicID::smartfabUnits, 3600s, _C(&Commodities::smartfabUnits, 3), _inputs(_C(&Commodities::constructionBlocks, 10), _C(&Commodities::miniatureElectronics, 10)));
			constexpr auto nuclearReactors = MakeSchematic(SchematicID::nuclearReactors, 3600s, _C(&Commodities::nuclearReactors, 3), _inputs(_C(&Commodities::enrichedUranium, 10), _C(&Commodities::microfiberShielding, 10)));
			constexpr auto guidanceSystems = MakeSchematic(SchematicID::guidanceSystems, 3600s, _C(&Commodities::guidanceSystems, 3), _inputs(_C(&Commodities::waterCooledCPU, 10), _C(&Commodities::transmitter, 10)));
			constexpr auto neocoms = MakeSchematic(SchematicID::neocoms, 3600s, _C(&Commodities::neocoms, 3), _inputs(_C(&Commodities::biocells, 10), _C(&Commodities::silicateGlass, 10)));
			constexpr auto planetaryVehicles = MakeSchematic(SchematicID::planetaryVehicles, 3600s, _C(&Commodities::planetaryVehicles, 3), _inputs(_C(&Commodities::supertensilePlastics, 10), _C(&Commodities::mechanicalParts, 10), _C(&Commodities::miniatureElectronics, 10)));
			constexpr auto biotechResearchReports = MakeSchematic(SchematicID::biotechResearchReports, 3600s, _C(&Commodities::biotechResearchReports, 3), _inputs(_C(&Commodities::nanites, 10), _C(&Commodities::livestock, 10), _C(&Commodities::constructionBlocks, 10)));
			constexpr auto vaccines = MakeSchematic(SchematicID::vaccines, 3600s, _C(&Commodities::vaccines, 3), _inputs(_C(&Commodities::livestock, 10), _C(&Commodities::viralAgent, 10)));
			constexpr auto industrialExplosives = MakeSchematic(SchematicID::industrialExplosives, 3600s, _C(&Commodities::industrialExplosives, 3), _inputs(_C(&Commodities::fertilizer, 10), _C(&Commodities::polytextiles, 10)));
			constexpr auto hermeticMembranes = MakeSchematic(SchematicID::hermeticMembranes, 3600s, _C(&Commodities::hermeticMembranes, 3), _inputs(_C(&Commodities::polyaramids, 10), _C(&Commodities::geneticallyEnhancedLivestock, 10)));
			constexpr auto transcranialMicrocontroller = MakeSchematic(SchematicID::transcranialMicrocontroller, 3600s, _C(&Commodities::transcranialMicrocontrollers, 3), _inputs(_C(&Commodities::biocells, 10), _C(&Commodities::nanites, 10)));
			constexpr auto dataChips = MakeSchematic(SchematicID::dataChips, 3600s, _C(&Commodities::dataChips, 3), _inputs(_C(&Commodities::supertensilePlastics, 10), _C(&Commodities::microfiberShielding, 10)));
			constexpr auto hazmatDetectionSystems = MakeSchematic(SchematicID::hazmatDetectionSystems, 3600s, _C(&Commodities::hazmatDetectionSystems, 3), _inputs(_C(&Commodities::polytextiles, 10), _C(&Commodities::viralAgent, 10), _C(&Commodities::transmitter, 10)));
			constexpr auto cryoprotectantSolution = MakeSchematic(SchematicID::cryoprotectantSolution, 3600s, _C(&Commodities::cryoprotectantSolution, 3), _inputs(_C(&Commodities::testCultures, 10), _C(&Commodities::syntheticOil, 10), _C(&Commodities::fertilizer, 10)));
			constexpr auto organicMortarApplicators = MakeSchematic(SchematicID::organicMortarApplicators, 3600s, _C(&Commodities::organicMortarApplicators, 1), _inputs(_C(&Commodities::condensates, 6), _C(&Commodities::bacteria, 40), _C(&Commodities::robotics, 6)));
			constexpr auto sterileConduits = MakeSchematic(SchematicID::sterileConduits, 3600s, _C(&Commodities::sterileConduits, 1), _inputs(_C(&Commodities::smartfabUnits, 6), _C(&Commodities::water, 40), _C(&Commodities::vaccines, 6)));
			constexpr auto nanoFactory = MakeSchematic(SchematicID::nanoFactory, 3600s, _C(&Commodities::nanoFactory, 1), _inputs(_C(&Commodities::industrialExplosives, 6), _C(&Commodities::reactiveMetals, 40), _C(&Commodities::ukomiSuperconductors, 6)));
			constexpr auto selfHarmonizingPowerCore = MakeSchematic(SchematicID::selfHarmonizingPowerCore, 3600s, _C(&Commodities::selfHarmonizingPowerCore, 1), _inputs(_C(&Commodities::cameraDrones, 6), _C(&Commodities::nuclearReactors, 6), _C(&Commodities::hermeticMembranes, 6)));
			constexpr auto recursiveComputingModule = MakeSchematic(SchematicID::recursiveComputingModule, 3600s, _C(&Commodities::recursiveComputingModule, 1), _inputs(_C(&Commodities::syntheticSynapses, 6), _C(&Commodities::guidanceSystems, 6), _C(&Commodities::transcranialMicrocontrollers, 6)));
			constexpr auto broadcastNode = MakeSchematic(SchematicID::broadcastNode, 3600s, _C(&Commodities::broadcastNode, 1), _inputs(_C(&Commodities::neocoms, 6), _C(&Commodities::dataChips, 6), _C(&Commodities::highTechTransmitters, 6)));
			constexpr auto integrityResponseDrones = MakeSchematic(SchematicID::integrityResponseDrones, 3600s, _C(&Commodities::integrityResponseDrones, 1), _inputs(_C(&Commodities::gelMatrixBiopaste, 6), _C(&Commodities::hazmatDetectionSystems, 6), _C(&Commodities::planetaryVehicles, 6)));
			constexpr auto wetwareMainframe = MakeSchematic(SchematicID::wetwareMainframe, 3600s, _C(&Commodities::wetwareMainframe, 1), _inputs(_C(&Commodities::supercomputers, 6), _C(&Commodities::biotechResearchReports, 6), _C(&Commodities::cryoprotectantSolution, 6)));
			constexpr auto water = MakeSchematic(SchematicID::water, 1800s, _C(&Commodities::water, 20), _inputs(_C(&Commodities::aqueousLiquids, 3000)));
			constexpr auto plasmoids = MakeSchematic(SchematicID::plasmoids, 1800s, _C(&Commodities::plasmoids, 20), _inputs(_C(&Commodities::suspendedPlasma, 3000)));
			constexpr auto electrolytes = MakeSchematic(SchematicID::electrolytes, 1800s, _C(&Commodities::electrolytes, 20), _inputs(_C(&Commodities::ionicSolutions, 3000)));
			constexpr auto oxygen = MakeSchematic(SchematicID::oxygen, 1800s, _C(&Commodities::oxygen, 20), _inputs(_C(&Commodities::nobleGas, 3000)));
			constexpr auto oxidizingCompound = MakeSchematic(SchematicID::oxidizingCompound, 1800s, _C(&Commodities::oxidizingCompound, 20), _inputs(_C(&Commodities::reactiveGas, 3000)));
			constexpr auto reactiveMetals = MakeSchematic(SchematicID::reactiveMetals, 1800s, _C(&Commodities::reactiveMetals, 20), _inputs(_C(&Commodities::baseMetals, 3000)));
			constexpr auto preciousMetals = MakeSchematic(SchematicID::preciousMetals, 1800s, _C(&Commodities::preciousMetals, 20), _inputs(_C(&Commodities::nobleMetals, 3000)));
			constexpr auto toxicMetals = MakeSchematic(SchematicID::toxicMetals, 1800s, _C(&Commodities::toxicMetals, 20), _inputs(_C(&Commodities::heavyMetals, 3000)));
			constexpr auto chiralStructures = MakeSchematic(SchematicID::chiralStructures, 1800s, _C(&Commodities::chiralStructures, 20), _inputs(_C(&Commodities::nonCSCrystals, 3000)));
			constexpr auto silicon = MakeSchematic(SchematicID::silicon, 1800s, _C(&Commodities::silicon, 20), _inputs(_C(&Commodities::felsicMagma, 3000)));
			constexpr auto bacteria = MakeSchematic(SchematicID::bacteria, 1800s, _C(&Commodities::bacteria, 20), _inputs(_C(&Commodities::microorganisms, 3000)));
			constexpr auto biomass = MakeSchematic(SchematicID::biomass, 1800s, _C(&Commodities::biomass, 20), _inputs(_C(&Commodities::plankticColonies, 3000)));
			constexpr auto proteins = MakeSchematic(SchematicID::proteins, 1800s, _C(&Commodities::proteins, 20), _inputs(_C(&Commodities::complexOrganisms, 3000)));
			constexpr auto biofuels = MakeSchematic(SchematicID::biofuels, 1800s, _C(&Commodities::biofuels, 20), _inputs(_C(&Commodities::carbonCompounds, 3000)));
			constexpr auto industrialFibers = MakeSchematic(SchematicID::industrialFibers, 1800s, _C(&Commodities::industrialFibers, 20), _inputs(_C(&Commodities::autotrophs, 3000)));
		}

		constexpr const MetaInfo::Schematic* schematics[] {
&Schematics::superconductors, &Schematics::coolant, &Schematics::rocketFuel, &Schematics::syntheticOil, &Schematics::oxides, &Schematics::silicateGlass, &Schematics::transmitter, &Schematics::waterCooledCPU, &Schematics::mechanicalParts, &Schematics::constructionBlocks, &Schematics::enrichedUranium, &Schematics::consumerElectronics, &Schematics::miniatureElectronics, &Schematics::nanites, &Schematics::biocells, &Schematics::microfiberShielding, &Schematics::viralAgent, &Schematics::fertilizer, &Schematics::geneticallyEnhancedLivestock, &Schematics::livestock, &Schematics::polytextiles, &Schematics::testCultures, &Schematics::supertensilePlastics, &Schematics::polyaramids, &Schematics::ukomiSuperconductor, &Schematics::condensates, &Schematics::cameraDrones, &Schematics::syntheticSynapses, &Schematics::highTechTransmitter, &Schematics::gelMatrixBiopaste, &Schematics::supercomputers, &Schematics::robotics, &Schematics::smartfabUnits, &Schematics::nuclearReactors, &Schematics::guidanceSystems, &Schematics::neocoms, &Schematics::planetaryVehicles, &Schematics::biotechResearchReports, &Schematics::vaccines, &Schematics::industrialExplosives, &Schematics::hermeticMembranes, &Schematics::transcranialMicrocontroller, &Schematics::dataChips, &Schematics::hazmatDetectionSystems, &Schematics::cryoprotectantSolution, &Schematics::organicMortarApplicators, &Schematics::sterileConduits, &Schematics::nanoFactory, &Schematics::selfHarmonizingPowerCore, &Schematics::recursiveComputingModule, &Schematics::broadcastNode, &Schematics::integrityResponseDrones, &Schematics::wetwareMainframe, &Schematics::water, &Schematics::plasmoids, &Schematics::electrolytes, &Schematics::oxygen, &Schematics::oxidizingCompound, &Schematics::reactiveMetals, &Schematics::preciousMetals, &Schematics::toxicMetals, &Schematics::chiralStructures, &Schematics::silicon, &Schematics::bacteria, &Schematics::biomass, &Schematics::proteins, &Schematics::biofuels, &Schematics::industrialFibers, 		};
	}
}
