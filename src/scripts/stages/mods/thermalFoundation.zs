import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageRocketBuilder.stage: [
		<thermalfoundation:ore:7>,
		<thermalfoundation:material:199>,
	],
	stageAsteroidAdvancedResources.stage: [
		<thermalfoundation:material:802>,
	],
};

static disabledItems as IIngredient[] = [
	<thermalfoundation:material:23>,
	<thermalfoundation:material:769>,
	<thermalfoundation:material:800>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}