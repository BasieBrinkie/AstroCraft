import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	planetAsteroids1.stage: [
		<techguns:basicore:4>,
	]
};

static disabledItems as IIngredient[] = [
	<techguns:radaway:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}