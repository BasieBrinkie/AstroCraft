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
	/*
	nonstaged.stage: [
		<advancedrocketry:spacehelmet>,
		<advancedrocketry:spacechestplate>.withTag(nbt.pressureTank_Oxygen(4000, 0)),
		<advancedrocketry:spaceleggings>,
		<advancedrocketry:spaceboots>
	]
	*/
	stageOxygen1.stage: [
		<advancedrocketry:charcoallog:0>,		
		<advancedrocketry:oxygencharger:0>,
		<advancedrocketry:platepress:0>
	],
	stageRocketBuilder.stage: [
		<advancedrocketry:fuelingstation:0>,
		<advancedrocketry:fueltank:0>,
		<advancedrocketry:guidancecomputer:0>,
		<advancedrocketry:launchpad:0>,
		<advancedrocketry:loader:0>,
		<advancedrocketry:rocketbuilder:0>,
		<advancedrocketry:rocketmotor:0>,
		<advancedrocketry:seat:0>,
		<advancedrocketry:spacestation:0>,
		<advancedrocketry:spacestationchip:0>,
		<advancedrocketry:stationbuilder:0>,
		<advancedrocketry:structuretower:0>

	]
};

static disabledItems as IIngredient[] = [

];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}