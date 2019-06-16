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
	stageResources1.stage: [
		<factorytech:grindstone:0>,
		<factorytech:intermediate:4>,
		<factorytech:machinepart:0>,
		<factorytech:machinepart:10>,
		<factorytech:machinepart:20>,
		<factorytech:machinepart:50>,
		<factorytech:machinepart:60>,
		<factorytech:machinepart:72>,
		<factorytech:oredrill:0>,
		<factorytech:salvagepart:60>,
		<factorytech:saw:0>
	],
	stageRocketBuilder.stage: [
		<factorytech:circuit_intermediate:0>,
		<factorytech:circuit_intermediate:1>,
		<factorytech:circuit_intermediate:2>,
		<factorytech:circuit_intermediate:3>,
		<factorytech:circuit_intermediate:8>,
		<factorytech:ore_dust:9>,
	]
};

static disabledItems as IIngredient[] = [
	<factorytech:blockbreaker:0>,
	<factorytech:fluiddrill:0>,
	<factorytech:machinepart:30>,
	<factorytech:planeshifter:0>,
	<factorytech:salvage:0>,	
	<factorytech:salvage:1>,
	<factorytech:salvage:2>,
	<factorytech:salvage:3>,
	<factorytech:salvage:4>,
	<factorytech:salvage:5>,
	<factorytech:salvage:6>,
	<factorytech:salvage:7>,
	<factorytech:salvage:8>,
	<factorytech:salvage:9>,
	<factorytech:salvage:10>,
	<factorytech:salvage:11>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}