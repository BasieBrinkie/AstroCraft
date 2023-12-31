import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsAdvancedResources.stage: [
		<techguns:basicore:4>,
	],
	stageBasicNuclearManagement.stage: [
		<techguns:itemshared:146>
	],
	stageMiner1.stage: [
		<techguns:explosive_charge:0>,
		<techguns:explosive_charge:1>,
	],
};

static disabledItems as IIngredient[] = [
	<techguns:radaway:0>,
	<techguns:radpills:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}