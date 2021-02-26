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
		<charcoal_pit:fire_starter:0>,
		<charcoal_pit:item_ash:0>,
		<charcoal_pit:log_pile:0>
	],
	stageProfessionsStage1.stage: [
	],
};

static disabledItems as IIngredient[] = [
	<charcoal_pit:item_coke:0>,
	<charcoal_pit:bloomery_hatch:0>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}