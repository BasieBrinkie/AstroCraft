import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static stagedOredicts as IOreDictEntry[][string] = {
    stageBasicDecorator.stage: [
        <ore:doorWood>

    ]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
    stager.setStageOredict(stagedOredicts);
	stager.disable(disabledItems);
}