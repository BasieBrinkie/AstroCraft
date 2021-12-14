import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsResources1.stage: [
		<appliedenergistics2:crank:0>,
		<appliedenergistics2:grindstone:0>
	],
	stageAsteroidsAutomater.stage: [
		<appliedenergistics2:material:5>
	],
	stageMiner1.stage: [
		<appliedenergistics2:sky_compass:0>
	],

	//Item Stages
	itemAE2MEChest.stage: [
		<appliedenergistics2:chest:0>,
	],
	itemAE21KDisk.stage:[
		<appliedenergistics2:storage_cell_1k:0>
	]
};

static disabledItems as IIngredient[] = [
	<appliedenergistics2:material:4>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}