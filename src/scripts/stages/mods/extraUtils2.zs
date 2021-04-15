import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidOxygen1.stage: [
		<extrautils2:grocket:2>,
		<extrautils2:ingredients:8>,
		<extrautils2:pipe:0>
	],
	stageAsteroidAdvancedResources.stage: [

	],
	
	stageDecoration1Enable.stage: [

	]
};

static disabledItems as IIngredient[] = [
	<extrautils2:trashchest>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}