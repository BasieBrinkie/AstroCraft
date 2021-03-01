import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageSpawnItems.stage: [
		<nuclearcraft:geiger_counter>,
		<nuclearcraft:radiation_badge>,
	],
	planetAsteroids1.stage: [
		<nuclearcraft:uranium:10>,
	],

	stageFarmer1.stage: [
		<nuclearcraft:flour:0>
	]
};

static disabledItems as IIngredient[] = [
	<nuclearcraft:gem_dust:7>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ore:4>,
	<nuclearcraft:uranium:1>,
	<nuclearcraft:uranium:3>,
	<nuclearcraft:uranium:5>,
	<nuclearcraft:uranium:7>,
	<nuclearcraft:uranium:9>,
	<nuclearcraft:uranium:11>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}