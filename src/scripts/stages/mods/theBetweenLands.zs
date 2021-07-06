import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsOxygenExtractor.stage: [
		<thebetweenlands:compost_block:0>,
		<thebetweenlands:fallen_leaves:0>,
		<thebetweenlands:items_misc:2>
	],
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}