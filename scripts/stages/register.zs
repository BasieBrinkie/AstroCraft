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
	-----------
	Dimensions.
	-----------
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
	----------------------
	Progression Stages: 0.
	----------------------
*/
global stageOxygen1 as Stage = ZenStager.initStage("oxygen_one");
global stageResources1 as Stage = ZenStager.initStage("resources_one");
global stageRocketBuilder as Stage = ZenStager.initStage("rocket_builder");


/*
	----------------------
	Progression Stages: 1.
	----------------------
*/
global stageProfessionsStage1 as Stage = ZenStager.initStage("professions_one");

global stageEmerald as Stage = ZenStager.initStage("emerald");
global stageCrook as Stage = ZenStager.initStage("crook");
global stageShears as Stage = ZenStager.initStage("shears");
global stageTank1 as Stage = ZenStager.initStage("tank_one");
global stageResources2 as Stage = ZenStager.initStage("resources_two");

global stageScavenger as Stage = ZenStager.initStage("scavenger");
global stageMiner1 as Stage = ZenStager.initStage("miner_one");
global stageOxygenExtractor as Stage = ZenStager.initStage("oxygen_extractor");
global stageDecorator as Stage = ZenStager.initStage("decorator");
global stageFarmer1 as Stage = ZenStager.initStage("farmer_one");
global stageMoldMaker as Stage = ZenStager.initStage("mold_maker");
global stageAstronomer as Stage = ZenStager.initStage("astronomer");


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
	--------------
	Planet Stages.
	--------------
*/
global planetAetherThaumcraft1 as Stage = ZenStager.initStage("aetherleg_thaumcraft_one");

global planetAetherIIAcademy as Stage = ZenStager.initStage("aether_academy");

global planetGlacidusStockFarmer as Stage = ZenStager.initStage("glacidus_stockfarmer");
/*
	-----------
	Mob Stages.
	-----------
*/
global stageChickens1 as Stage = ZenStager.initStage("chickens_one");

/*
	------------
	Misc Stages.
	------------
*/
global stageDecoration1Enable as Stage = ZenStager.initStage("decoration_one_enable");
global stageDecoration1Disable as Stage = ZenStager.initStage("decoration_one_disable");
global stageDisabledItems as Stage = ZenStager.initStage("disabled_items");
global stageRecurrentComplex as Stage = ZenStager.initStage("reccomplex");
global stageNonStaged as Stage = ZenStager.initStage("non_staged_items");
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