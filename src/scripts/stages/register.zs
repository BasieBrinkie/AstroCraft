#priority 9999
/*
	---------------------------------
	This script registers all stages.
	---------------------------------
*/

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

/*
	----------
	Gamemodes.
	----------
*/
global gameModeAbnormal as Stage = ZenStager.initStage("gamemode_abnormal");
global gameModeGenius as Stage = ZenStager.initStage("gamemode_genius");
global gameModeKitchenSink as Stage = ZenStager.initStage("gamemode_kitchensink");

/*
	------------------------
	Dimension Locked Stages.
	------------------------
*/
global dimensionSpaceStation as Stage = ZenStager.initStage("dim_spacestation");
global dimensionAsteroids as Stage = ZenStager.initStage("dim_asteroids");
global dimensionGlacidus as Stage = ZenStager.initStage("dim_glacidus");

/*
	------------
	Spawn Items.
	------------
*/
global stageSpawnItems as Stage = ZenStager.initStage("spawn_items");

/*
	------------
	Books.
	------------
*/
global bookPersonalDiary as Stage = ZenStager.initStage("book_personal_diary");
global bookMultiblockCheatsheet as Stage = ZenStager.initStage("book_multiblock_cheatsheet");

/*
	----------------------
	Basic Knowledge
	----------------------
*/
global stageBasicDecorator as Stage = ZenStager.initStage("basic_decorator");
global stageBasicDecoratorToggle as Stage = ZenStager.initStage("basic_decorator_toggle");
global stageBasicFuelRefinery as Stage = ZenStager.initStage("basic_fuel_refinery");
global stageBasicLogicalSystems1 as Stage = ZenStager.initStage("basic_logical_systems_one");
global stageBasicNuclearManagement as Stage = ZenStager.initStage("basic_nuclear_management");
global stageBasicOxygen as Stage = ZenStager.initStage("basic_oxygen");
global stageBasicRocketBuilder as Stage = ZenStager.initStage("basic_rocket_builder");
global stageBasicSpaceCourier as Stage = ZenStager.initStage("basic_space_courier");

/*
	----------------------
	Progression Stages: 1.
	----------------------
*/
global stageResources2 as Stage = ZenStager.initStage("resources_two");

global stageMiner1 as Stage = ZenStager.initStage("miner_one");
global stageFarmer1 as Stage = ZenStager.initStage("farmer_one");
global stageMoldMaker as Stage = ZenStager.initStage("mold_maker");
global stagePowerTransportation as Stage = ZenStager.initStage("power_transportation");
global stageCircuitBoardManufacturer as Stage = ZenStager.initStage("circuit_board_manufacturer");

/*
	----------------------
	Progression Stages: 2.
	----------------------
*/
global stageProfessionsStage2 as Stage = ZenStager.initStage("professions_two");

global stageOxygenManager as Stage = ZenStager.initStage("oxygen_manager");
global stageBlackSmith as Stage = ZenStager.initStage("black_smith");


/*
	----------------------
	Progression Stages: 3.
	----------------------
*/
global stageProfessionsStage3 as Stage = ZenStager.initStage("professions_three");

global stageNuclearPhysicist as Stage = ZenStager.initStage("nuclear_physicist");


/*
	----------------------
	Progression Stages: 4.
	----------------------
*/
global stageProfessionsStage4 as Stage = ZenStager.initStage("professions_four");

global stageNuclearPhysicistMaster as Stage = ZenStager.initStage("nuclear_physicist_master");


/*
	----------------------
	Progression Stages: 5.
	----------------------
*/
global stageProfessionsStage5 as Stage = ZenStager.initStage("professions_five");

global stageGunSmithMaster as Stage = ZenStager.initStage("gunsmith_master");


/*
	----------------------
	Spaceship
	----------------------
*/

global stageSpaceshipArmory as Stage = ZenStager.initStage("spaceship_armory");
global stageSpaceshipAstronomer as Stage = ZenStager.initStage("spaceship_astronomer");
global stageSpaceshipWarp as Stage = ZenStager.initStage("spaceship_warp");

//Arcturus
/*
	----------------------
	Asteroids 1.
	----------------------
*/
global stageAsteroidsAdvancedResources as Stage = ZenStager.initStage("planet_asteroids_advanced_resources");
global stageAsteroidsAutomater as Stage = ZenStager.initStage("planet_asteroids_automater");
global stageAsteroidsOxygen1 as Stage = ZenStager.initStage("planet_asteroids_oxygen_one");
global stageAsteroidsOxygenExtractor as Stage = ZenStager.initStage("planet_asteroids_oxygen_extractor");
global stageAsteroidsResources1 as Stage = ZenStager.initStage("planet_asteroids_resources_one");


global planetGlacidusStockFarmer as Stage = ZenStager.initStage("glacidus_stockfarmer");





global planetAetherIIThaumcraft1 as Stage = ZenStager.initStage("aether_thaumcraft_one");

global planetAetherIIAcademy as Stage = ZenStager.initStage("aether_academy");

/*
	-----------------------
	Specific Liquid Stages.
	-----------------------
*/
global toolsSteel as Stage = ZenStager.initStage("tools_steel");

/*
	-----------------------
	Specific Liquid Stages.
	-----------------------
*/
global liquidLava as Stage = ZenStager.initStage("liquid_lava");
/*
	---------------------
	Specific Item Stages.
	---------------------
*/
//Advanced Rocketry
global advancedRocketryMultiblock as Stage = ZenStager.initStage("advanced_rocketry_multiblock");
global itemAdvancedRocketryDrill as Stage = ZenStager.initStage("item_advanced_rocketry_drill");

//AE 2
global itemAE2MEChest as Stage = ZenStager.initStage("item_ae_me_chest");
global itemAE21KDisk as Stage = ZenStager.initStage("item_ae_one_k_disk");

//Atum
global itemAtumBeacon as Stage = ZenStager.initStage("item_atum_beacon");

//Mekanism
global stageTank1 as Stage = ZenStager.initStage("tank_one");

//Minecraft
global stageEmerald as Stage = ZenStager.initStage("emerald");
global stageCrook as Stage = ZenStager.initStage("crook");
global stageShears as Stage = ZenStager.initStage("shears");
global stageLeaves as Stage = ZenStager.initStage("leaves");


//Modular Machinery
global modularMachineryTier1 as Stage = ZenStager.initStage("modular_machinery_tier_one");
global modularMachineryTier2 as Stage = ZenStager.initStage("modular_machinery_tier_two");
/*
	------------
	Misc Stages.
	------------
*/
global metalIronIngotTier2 as Stage = ZenStager.initStage("metal_iron_ingot_tier_two");
global metalSteelTier2 as Stage = ZenStager.initStage("metal_steel_tier_two");

global stageDisabledItems as Stage = ZenStager.initStage("disabled_items");
global stageRecurrentComplex as Stage = ZenStager.initStage("reccomplex");
global stageNonStaged as Stage = ZenStager.initStage("non_staged_items");

/*
	----------------
	Structure Stages
	----------------
Arcturus - Asteroids 1:
	Asteroid Beacon - structure_asteroidbeacon
	Mining Droid 	- structure_miningdroid
*/

/*
var allStages as string[] = [
"insert",
"all",
"your",
"stages",
"here"
];

//AE Crafting Terminal
mods.recipestages.Recipes.setPackageStage("appeng", allStages);

//RS Crafting Grid
mods.recipestages.Recipes.setPackageStage("com.raoulvdberge.refinedstorage", allStages);

//RFtools Crafters
mods.recipestages.Recipes.setPackageStage("mcjty", allStages);

//Thermal Expansion
mods.recipestages.Recipes.setPackageStage("cofh", allStages);
*/