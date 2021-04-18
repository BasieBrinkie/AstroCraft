import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsOxygen1.stage: [
		<contenttweaker:astrostone:0>,
		<contenttweaker:astrostone_2:0>,
		<contenttweaker:astrostone_3:0>
	],
	stageAsteroidsResources1.stage: [
		<contenttweaker:astro_ice:0>,
	]
};

static disabledItems as IIngredient[] = [
	<contenttweaker:multiblock_cheatsheet:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}