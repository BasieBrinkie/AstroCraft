import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static stagedItemsOredict as IOreDictEntry[][string] = {
	stageAsteroidOxygen1.stage: [
		<ore:clumpCopperTier1>,
		<ore:blockCopperTier1>,
		<ore:plateCopperTier1>
	],
	stageAsteroidAdvancedResources.stage: [
		<ore:ingotCopperTier1>,
		<ore:nuggetCopperTier1>,
	],
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.setStageOredict(stagedItemsOredict);
	stager.disable(disabledItems);
}