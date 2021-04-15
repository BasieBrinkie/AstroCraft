import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidOxygen1.stage: [
		<contenttweaker:astrostone:0>,
		<contenttweaker:astrostone2:0>,
		<contenttweaker:astrostone3:0>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}