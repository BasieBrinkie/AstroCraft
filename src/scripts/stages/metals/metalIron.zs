import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	metalIronIngotTier2.stage: [
		<factorytech:ingot:5>
	],
};

static stagedItemsOredict as IOreDictEntry[][string] = {
	metalIronIngotTier1.stage: [
		<ore:ingotIronTier1>,
	],
	stageAsteroidsResources1.stage: [
		<ore:blockIronTier1>,
		<ore:dustIronTier1>,
		<ore:nuggetIronTier1>,
		<ore:plateIronTier1>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.setStageOredict(stagedItemsOredict);
	stager.disable(disabledItems);
}