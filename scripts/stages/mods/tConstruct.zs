import crafttweaker.item.IIngredient;

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
	stageResources1.stage: [
		<tconstruct:casting:0>,
		<tconstruct:casting:1>,
		<tconstruct:faucet:0>,
		<tconstruct:materials:0>,
		<tconstruct:materials:15>,
		<tconstruct:tooltables:0>,
		<tconstruct:soil:0>,
	]
};

static disabledItems as IIngredient[] = [
	<tconstruct:cast>.withTag({PartType: "tconstruct:shard"}),
	<tconstruct:cast_custom:0>,
	<tconstruct:cast_custom:1>,
	<tconstruct:cast_custom:3>,
	<tconstruct:cast_custom:4>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}