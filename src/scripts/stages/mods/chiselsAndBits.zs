import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageProfessionsStage1;
import scripts.stages.register.stageProfessionsStage2;
import scripts.stages.register.stageProfessionsStage3;
import scripts.stages.register.stageProfessionsStage4;
import scripts.stages.register.stageProfessionsStage5;

import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageRocketBuilder;
import scripts.stages.register.stageOxygenExtractor;
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageDecoration1Enable;

static stagedItems as IIngredient[][string] = {
	stageDecorator.stage: [
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
    stageDecorator.stage: [
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