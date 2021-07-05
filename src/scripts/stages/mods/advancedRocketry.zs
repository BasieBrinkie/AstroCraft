import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register;

static stagedItems as IIngredient[][string] = {
	stageSpawnItems.stage: [
		<advancedrocketry:spacehelmet>,
		<advancedrocketry:spacechestplate>.withTag(nbt.pressureTank_Oxygen(4000, 0)),
		<advancedrocketry:spacechestplate>,
		<advancedrocketry:spaceleggings>,
		<advancedrocketry:spaceboots>
	],
	stageAsteroidsOxygen1.stage: [
		<advancedrocketry:charcoallog:0>,
		<advancedrocketry:liquidtank:0>,	
		<advancedrocketry:oxygencharger:0>,
		<advancedrocketry:platepress:0>
	],
	stageRocketBuilder.stage: [
		<advancedrocketry:fuelingstation:0>,
		<advancedrocketry:fueltank:0>,
		<advancedrocketry:guidancecomputer:0>,
		<advancedrocketry:launchpad:0>,
		<advancedrocketry:liquidtank:0>,
		<advancedrocketry:loader:1>,
		<advancedrocketry:rocketbuilder:0>,
		<advancedrocketry:rocketmotor:0>,
		<advancedrocketry:seat:0>,
		<advancedrocketry:spacestation:0>,
		<advancedrocketry:spacestationchip:0>,
		<advancedrocketry:stationbuilder:0>,
		<advancedrocketry:structuretower:0>
	],
	advancedRocketryMultiblock.stage: [
		<advancedrocketry:misc:0>,
	]
};

static disabledItems as IIngredient[] = [

];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}