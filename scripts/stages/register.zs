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

/*
	----------------------
	Progression Stages: 0.
	----------------------
*/
static stageStart as Stage = ZenStager.initStage("start");
static stageOxygen1 as Stage = ZenStager.initStage("oxygen_one");
static stageResources1 as Stage = ZenStager.initStage("resources_one");
static stageRocketBuilder as Stage = ZenStager.initStage("rocket_builder");

/*
	----------------------
	Progression Stages: 1.
	----------------------
*/
static stageDecorator as Stage = ZenStager.initStage("decorator");
static stageFarmer1 as Stage = ZenStager.initStage("farmer_one");
static stageMoldMaker as Stage = ZenStager.initStage("mold_maker");
static stageAstronomer as Stage = ZenStager.initStage("astronomer");

/*
	----------------------
	Progression Stages: 2.
	----------------------
*/
static stageBlackSmith as Stage = ZenStager.initStage("black_smith");

/*
	----------------------
	Progression Stages: 3.
	----------------------
*/
static stageNuclearPhysicist as Stage = ZenStager.initStage("nuclear_physicist");

/*
	----------------------
	Progression Stages: 4.
	----------------------
*/

/*
	----------------------
	Progression Stages: 5.
	----------------------
*/


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
static stageDecoration as Stage = ZenStager.initStage("decoration");
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