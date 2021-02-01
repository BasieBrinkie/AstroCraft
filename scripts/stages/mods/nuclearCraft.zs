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
	stageProfessionsStage1.stage: [
		<nuclearcraft:uranium:10>,
	],

	stageFarmer1.stage: [
		<nuclearcraft:flour:0>
	]
};

static disabledItems as IIngredient[] = [
	<nuclearcraft:gem_dust:7>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ore:4>,
	<nuclearcraft:uranium:1>,
	<nuclearcraft:uranium:3>,
	<nuclearcraft:uranium:5>,
	<nuclearcraft:uranium:7>,
	<nuclearcraft:uranium:9>,
	<nuclearcraft:uranium:11>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}