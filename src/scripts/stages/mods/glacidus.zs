import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
    dimensionGlacidus.stage: [
        <glacidus:dead_lumicia:0>,
        <glacidus:frozen_antinatric_stone:0>,
        <glacidus:glacidite_ore:0>,
        <glacidus:lumicia_grass:0>,
        <glacidus:thawed_antinatric_stone:0>

    ],
    stageGlacidusSpawn.stage: [
        <glacidus:antinatric_pickaxe>,
        <glacidus:residuum:0>,
        <glacidus:underground_stick:0>,
    ],
};

static disabledItems as IIngredient[] = [
    <glacidus:glacidus_portal:0>,
    <glacidus:glacidus_portal_frame:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}