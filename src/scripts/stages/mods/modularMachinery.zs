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
    bluePrintAntennaTier1.stage: [
        <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:antenna_tier_1"})
    ]
};

static disabledItems as IIngredient[] = [
	<mekanism:basicblock:3>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}