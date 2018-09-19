#priority 1000
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageTheBeginning;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<advancedrocketry:oxygencharger:0>
	]

};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStages(stagedItems);
	stager.disable(disabledItems);
}