import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageTheBeginning;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	/*
	nonstaged.stage: [
		<advancedrocketry:spacehelmet>,
		<advancedrocketry:spacechestplate>.withTag(nbt.pressureTank_Oxygen(4000, 0)),
		<advancedrocketry:spaceleggings>,
		<advancedrocketry:spaceboots>
	]
	*/
	stageOxygen1.stage: [
		<advancedrocketry:charcoallog:0>,		
		<advancedrocketry:oxygencharger:0>,
		<advancedrocketry:platepress:0>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}