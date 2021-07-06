import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static stagedItemsOredict as IOreDictEntry[][string] = {
	stageBasicRocketBuilder.stage: [
		<ore:dustNickelTier1>,
		<ore:nuggetNickelTier1>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.setStageOredict(stagedItemsOredict);
	stager.disable(disabledItems);
}