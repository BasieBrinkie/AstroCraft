import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

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
		<advancedrocketry:fueltank:0>,
		<advancedrocketry:launchpad:0>,
		<advancedrocketry:spacestation>,
		<advancedrocketry:structuretower:0>

	]
};

static disabledItems as IIngredient[] = [
	<libvulpes:productdust:0>,
	<libvulpes:productdust:1>,
	<libvulpes:productdust:2>,
	<libvulpes:productdust:3>,
	<libvulpes:productdust:4>,
	<libvulpes:productdust:5>,
	<libvulpes:productdust:6>,
	<libvulpes:productdust:7>,
	<libvulpes:productdust:9>,
	<libvulpes:productdust:10>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}