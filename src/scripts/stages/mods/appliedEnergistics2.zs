import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidResources1.stage: [
		<appliedenergistics2:crank:0>,
		<appliedenergistics2:grindstone:0>
	]
};

static disabledItems as IIngredient[] = [
	<appliedenergistics2:material:4>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}