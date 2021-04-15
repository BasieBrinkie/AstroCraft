import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidOxygen1.stage: [
	]
};

static disabledItems as IIngredient[] = [
	<buildinggadgets:construction_chunk_dense:0>,
	<buildinggadgets:constructionblock_dense:0>,
	<buildinggadgets:constructionpaste:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}