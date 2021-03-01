import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageRocketBuilder.stage: [
		<mysticalagriculture:crafting:22>
	]
};

static disabledItems as IIngredient[] = [
	<mysticalagriculture:coal:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}