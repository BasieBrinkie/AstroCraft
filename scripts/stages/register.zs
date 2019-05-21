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
	-------------------
	Progression Stages.
	-------------------
*/
static stageStart as Stage = ZenStager.initStage("start");
static stageOxygen1 as Stage = ZenStager.initStage("oxygen_one");
static stageResources1 as Stage = ZenStager.initStage("resources_one");
static stageDecorator as Stage = ZenStager.initStage("decorator");
/*static stage1C as Stage = ZenStager.initStage("1c");
static stage2A as Stage = ZenStager.initStage("2a");
static stage2B as Stage = ZenStager.initStage("2b");
static stage2C as Stage = ZenStager.initStage("2c");
static stage3 as Stage = ZenStager.initStage("3");*/
static stageDecoration as Stage = ZenStager.initStage("decoration");
static stageDisabledItems as Stage = ZenStager.initStage("disabled_items");
static stageNonStaged as Stage = ZenStager.initStage("non_staged_items");

/*
	-----------
	Mob Stages.
	-----------
*/
static stageChickens1 as Stage = ZenStager.initStage("chickens_one");