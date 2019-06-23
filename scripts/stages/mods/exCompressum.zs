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
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageDecorationEnable;

static stagedItems as IIngredient[][string] = {
};

static disabledItems as IIngredient[] = [
	<excompressum:bait:0>,
	<excompressum:bait:1>,
	<excompressum:bait:2>,
	<excompressum:bait:3>,
	<excompressum:bait:4>,
	<excompressum:bait:5>,
	<excompressum:bait:6>,
	<excompressum:bait:7>,
	<excompressum:bait:8>,
	<excompressum:bait:9>,
	<excompressum:bait:10>,
	<excompressum:bait:11>,
	<excompressum:bait:12>,
	<excompressum:wooden_crucible:1>,
	<excompressum:wooden_crucible:2>,
	<excompressum:wooden_crucible:3>,
	<excompressum:wooden_crucible:4>,
	<excompressum:wooden_crucible:5>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}