import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	bookPersonalDiary.stage: [
		<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:personal_diary"})
	],
	bookMultiblockCheatsheet.stage: [
		<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:multiblock_cheatsheet"})
	],
	stageBasicRocketBuilder.stage: [
		<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:galactic_exploration_data"})
	],
};

static disabledItems as IIngredient[] = [

];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}