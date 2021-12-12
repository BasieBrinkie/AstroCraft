import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
    dimensionGlacidus.stage: [
    ],
    stageGlacidusSpawn.stage: [
        <glacidus:antinatric_axe>,
        <glacidus:antinatric_hoe>,
        <glacidus:antinatric_pickaxe>,
        <glacidus:antinatric_shovel>,
        <glacidus:antinatric_sword>,
        <glacidus:dead_lumicia:0>,
        <glacidus:frozen_antinatric_stone:0>,
        <glacidus:glacidite_ore:0>,
        <glacidus:lumicia_grass:0>,
        <glacidus:residuum:0>,
        <glacidus:thawed_antinatric_stone:0>,
        <glacidus:underground_stick:0>,
    ],
};

static disabledItems as IIngredient[] = [
    <glacidus:glacidus_booster:0>,
    <glacidus:glacidus_portal:0>,
    <glacidus:glacidus_portal_frame:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}