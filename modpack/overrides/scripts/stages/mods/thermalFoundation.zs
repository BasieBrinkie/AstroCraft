import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicRocketBuilder.stage: [
		<thermalfoundation:ore:7>,
		<thermalfoundation:material:199>,
	],
	stageAsteroidsAdvancedResources.stage: [
		<thermalfoundation:material:135>,
		<thermalfoundation:material:802>,
	],
	stageGlacidusSpawn.stage: [
		<thermalfoundation:material:816>
	],

	toolsSteel.stage: [
		<thermalfoundation:tool.axe_steel:*>,
		<thermalfoundation:tool.hoe_steel:*>,
		<thermalfoundation:tool.pickaxe_steel:*>,
		<thermalfoundation:tool.shovel_steel:*>,
	]
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