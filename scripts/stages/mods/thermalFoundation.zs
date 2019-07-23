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
	stageRocketBuilder.stage: [
		<thermalfoundation:ore:7>,
		<thermalfoundation:material:199>,
	],
	stageProfessionsStage1.stage: [
		<thermalfoundation:material:802>,
	],
};

static disabledItems as IIngredient[] = [
	<thermalfoundation:material:23>,
	<thermalfoundation:material:769>,
	<thermalfoundation:material:800>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}