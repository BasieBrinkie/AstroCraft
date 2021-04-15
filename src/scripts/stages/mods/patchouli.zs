import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidResources1.stage: [
		<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:chapter_1"}),
		<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:multiblock_cheatsheet"}),
	]
};

static disabledItems as IIngredient[] = [

];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}
