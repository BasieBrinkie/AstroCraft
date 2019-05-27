import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageStart;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageResources1.stage: [

	]
};

static disabledItems as IIngredient[] = [
	<thermalfoundation:material:23>,
	<thermalfoundation:material:800>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}