import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsOxygen1.stage: [
		<extrautils2:grocket:2>,
		<extrautils2:ingredients:8>,
		<extrautils2:pipe:0>
	],
	stageAsteroidsAutomater.stage: [
		<extrautils2:compresseddirt:0>,
		<extrautils2:compressedgravel:0>,
		<extrautils2:compressedsand:0>
	],
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}