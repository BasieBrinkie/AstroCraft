import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static stagedItemsOredict as IOreDictEntry[][string] = {
	stageRocketBuilder.stage: [
		<ore:ingotAluminumTier1>,
		<ore:nuggetAluminumTier1>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.setStageOredict(stagedItemsOredict);
	stager.disable(disabledItems);
}