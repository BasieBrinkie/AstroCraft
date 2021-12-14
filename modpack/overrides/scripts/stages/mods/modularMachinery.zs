import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	modularMachineryTier1.stage: [
        <modularmachinery:blockcasing:0>,
        <modularmachinery:blockcontroller:0>,
        <modularmachinery:blockenergyinputhatch:0>,
        <modularmachinery:blockenergyoutputhatch:0>,
        <modularmachinery:blockfluidoutputhatch:0>,
        <modularmachinery:blockinputbus:0>,
        <modularmachinery:blockoutputbus:0>,
	],
    modularMachineryTier2.stage: [
        <modularmachinery:blockenergyinputhatch:2>,
        <modularmachinery:blockenergyoutputhatch:2>,
        <modularmachinery:blockfluidoutputhatch:2>,
        <modularmachinery:blockinputbus:2>,
        <modularmachinery:blockoutputbus:2>,
    ],
    stageBasicRocketBuilder.stage: [
        <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:antenna_tier_1"})
    ],
    stageAsteroidsAutomater.stage: [
        <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:asteroid_miner_tier_1"})
    ],
};

static disabledItems as IIngredient[] = [
	    <modularmachinery:blockenergyinputhatch:1>,
        <modularmachinery:blockenergyoutputhatch:1>,
        <modularmachinery:blockfluidoutputhatch:1>,
        <modularmachinery:blockinputbus:1>,
        <modularmachinery:blockoutputbus:1>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}