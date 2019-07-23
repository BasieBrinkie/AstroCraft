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
import scripts.stages.register.stageDecoration1Enable;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<liquid:oxygen>
	],
	stageResources1.stage: [
		<liquid:iron>,
		<liquid:preheated_water>
	],
	stageRocketBuilder.stage: [
		<liquid:iridium>,
		<liquid:lead>,
		<liquid:nickel>
	],
	stageProfessionsStage1.stage: [
		<liquid:copper>,
		<liquid:lava>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}