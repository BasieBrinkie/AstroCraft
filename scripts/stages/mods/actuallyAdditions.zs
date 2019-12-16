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
	stageOxygen1.stage: [
		<actuallyadditions:item_worm:0>
	],
	stageResources1.stage: [
		<actuallyadditions:block_compost:0>,
	],
	stageProfessionsStage1.stage: [
		<actuallyadditions:item_knife:0>,
	],
	stageFarmer1.stage: [
		<actuallyadditions:item_canola_seed:0>,
		<actuallyadditions:item_crystal_shard:4>,
		<actuallyadditions:item_misc:13>
	],
	stageDecorator.stage: [
		<actuallyadditions:block_crystal_cluster_redstone:0>,
		<actuallyadditions:item_crystal_shard:0>
	],
};

static disabledItems as IIngredient[] = [
	<actuallyadditions:block_fermenting_barrel:0>,
	<actuallyadditions:item_dust:6>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}