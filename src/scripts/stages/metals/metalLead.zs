import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static stagedItemsOredict as IOreDictEntry[][string] = {
	stageBasicRocketBuilder.stage: [
		<ore:clumpLeadTier1>,
		<ore:dustLeadTier1>,
		<ore:nuggetLeadTier1>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.setStageOredict(stagedItemsOredict);
	stager.disable(disabledItems);
}