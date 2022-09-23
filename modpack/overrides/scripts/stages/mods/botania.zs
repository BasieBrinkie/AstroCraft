import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
    stageGlacidusSpawn.stage: [
        <botania:altar:0>,
        <botania:manaresource:3>,
        <botania:lexicon:0>,
        <botania:livingrock:0>,
        <botania:livingwood:0>,
        <botania:specialflower:0>.withTag({type: "puredaisy"}),
        <botania:spreader:0>
    ]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}