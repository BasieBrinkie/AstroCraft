import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageProfessionsStage1;
import scripts.stages.register.stageProfessionsStage2;
import scripts.stages.register.stageProfessionsStage3;
import scripts.stages.register.stageProfessionsStage4;
import scripts.stages.register.stageProfessionsStage5;

import scripts.stages.register.stageTank1;

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
	stageResources1.stage: [
		<mekanism:sawdust:0>
	],
	stageRocketBuilder.stage: [
		<mekanism:configurator:0>
	],
	stageOxygenExtractor.stage: [
		<mekanism:shard:4>
	],
	stageTank1.stage: [
		<mekanism:machineblock2:11>.withTag({tier: 0})
	]
};

static disabledItems as IIngredient[] = [
	<mekanism:basicblock:3>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}