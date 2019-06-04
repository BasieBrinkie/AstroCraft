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
static gameModeAbnormal as Stage = ZenStager.initStage("gamemode_abnormal");
static gameModeGenius as Stage = ZenStager.initStage("gamemode_genius");
static gameModeKitchenSink as Stage = ZenStager.initStage("gamemode_kitchensink");

/*
	----------------------
	Progression Stages: 0.
	----------------------
*/
static stageOxygen1 as Stage = ZenStager.initStage("oxygen_one");
static stageResources1 as Stage = ZenStager.initStage("resources_one");
static stageRocketBuilder as Stage = ZenStager.initStage("rocket_builder");

/*
	----------------------
	Progression Stages: 1.
	----------------------
*/
static stageProfessionsStage1 as Stage = ZenStager.initStage("professions_one");

static stageDecorator as Stage = ZenStager.initStage("decorator");
static stageFarmer1 as Stage = ZenStager.initStage("farmer_one");
static stageMoldMaker as Stage = ZenStager.initStage("mold_maker");
static stageAstronomer as Stage = ZenStager.initStage("astronomer");

/*
	----------------------
	Progression Stages: 2.
	----------------------
*/
static stageProfessionsStage2 as Stage = ZenStager.initStage("professions_two");

static stageBlackSmith as Stage = ZenStager.initStage("black_smith");

/*
	----------------------
	Progression Stages: 3.
	----------------------
*/
static stageProfessionsStage3 as Stage = ZenStager.initStage("professions_three");

static stageNuclearPhysicist as Stage = ZenStager.initStage("nuclear_physicist");

/*
	----------------------
	Progression Stages: 4.
	----------------------
*/
static stageProfessionsStage4 as Stage = ZenStager.initStage("professions_four");
/*
	----------------------
	Progression Stages: 5.
	----------------------
*/
static stageProfessionsStage5 as Stage = ZenStager.initStage("professions_five");
/*
	-----------
	Mob Stages.
	-----------
*/
static stageChickens1 as Stage = ZenStager.initStage("chickens_one");

/*
	------------
	Misc Stages.
	------------
*/
static stageDecorationEnable as Stage = ZenStager.initStage("decoration_enable");
static stageDecorationDisable as Stage = ZenStager.initStage("decoration_disable");
static stageDisabledItems as Stage = ZenStager.initStage("disabled_items");
static stageNonStaged as Stage = ZenStager.initStage("non_staged_items");
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