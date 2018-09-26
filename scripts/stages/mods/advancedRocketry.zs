import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageTheBeginning;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageTheBeginning.stage: [
		<advancedrocketry:spacehelmet:0>,
		<advancedrocketry:spacechestplate:0>,
		<advancedrocketry:spaceleggings:0>,
		<advancedrocketry:spaceboots:0>

	],
	stageOxygen1.stage: [
		<advancedrocketry:oxygencharger:0>,
		<advancedrocketry:charcoallog:0>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}