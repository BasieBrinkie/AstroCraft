#priority 9999
/*
	---------------------------------
	This script registers all stages.
	---------------------------------
*/

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

/*
	-------------------
	Progression Stages.
	-------------------
*/
static stageTheBeginning as Stage = ZenStager.initStage("theBeginning");
static stageOxygen1 as Stage = ZenStager.initStage("oxygen1");
/*static stage1A as Stage = ZenStager.initStage("1a");
static stage1B as Stage = ZenStager.initStage("1b");
static stage1C as Stage = ZenStager.initStage("1c");
static stage2A as Stage = ZenStager.initStage("2a");
static stage2B as Stage = ZenStager.initStage("2b");
static stage2C as Stage = ZenStager.initStage("2c");
static stage3 as Stage = ZenStager.initStage("3");*/
static stageDisabledItems as Stage = ZenStager.initStage("disabledItems");
static stageNonStaged as Stage = ZenStager.initStage("nonStagedItems");