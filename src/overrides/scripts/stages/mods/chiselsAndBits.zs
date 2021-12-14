import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicDecorator.stage: [
        <chiselsandbits:bit_bag:0>,
        <chiselsandbits:bitsaw_diamond:0>,
		<chiselsandbits:chisel_stone:0>,
        <chiselsandbits:chisel_iron:0>,
        <chiselsandbits:mirrorprint:0>,
        <chiselsandbits:negativeprint:0>,
        <chiselsandbits:positiveprint:0>,
        <chiselsandbits:wrench_wood:0>
	]
};

static stagedOredicts as IOreDictEntry[][string] = {
    stageBasicDecorator.stage: [
        <ore:chiselsAndBitsBitBags>

    ]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
    stager.setStageOredict(stagedOredicts);
	stager.disable(disabledItems);
}