import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
    stageGlacidusSpawn.stage: [
        <erebus:door_rotten>
    ],
};

static disabledItems as IIngredient[] = [
    <erebus:gaean_keystone>,
    <erebus:portal>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}