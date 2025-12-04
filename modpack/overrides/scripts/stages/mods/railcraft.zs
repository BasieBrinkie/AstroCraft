import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static stagedOredicts as IOreDictEntry[][string] = {
};

static disabledItems as IIngredient[] = [
    <railcraft:ore_metal:2>
];

function init() {
	stager.setStage(stagedItems);
    stager.setStageOredict(stagedOredicts);
	stager.disable(disabledItems);
}