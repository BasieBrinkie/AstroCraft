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
import scripts.stages.register.stageDecorationEnable;

static stagedItems as IIngredient[][string] = {
	stageResources1.stage: [
		<factorytech:centrifuge:0>,
		<factorytech:grindstone:0>,
		<factorytech:handbook:0>,
		<factorytech:intermediate:4>,
		<factorytech:machinepart:0>,
		<factorytech:machinepart:10>,
		<factorytech:machinepart:20>,
		<factorytech:machinepart:50>,
		<factorytech:machinepart:60>,
		<factorytech:salvagepart:20>,

		<factorytech:salvagepart:0>,
		<factorytech:salvagepart:50>,
		<factorytech:salvagepart:60>,
		<factorytech:saw:0>
	],
	stageRocketBuilder.stage: [
		<factorytech:circuit_intermediate:0>,
		<factorytech:circuit_intermediate:1>,
		<factorytech:circuit_intermediate:2>,
		<factorytech:circuit_intermediate:3>,
		<factorytech:circuit_intermediate:8>,
		<factorytech:circuitscribe:0>,
		<factorytech:machinepart:1>,
		<factorytech:machinepart:11>,
		<factorytech:machinepart:31>,
		<factorytech:machinepart:32>,
		<factorytech:machinepart:40>,
		<factorytech:machinepart:80>,
		<factorytech:metalcutter:0>,
		<factorytech:ore_dust:9>,
		<factorytech:salvagepart:1>,
		<factorytech:salvagepart:11>,	
		<factorytech:salvagepart:31>,
		<factorytech:salvagepart:80>
	],
	stageProfessionsStage1.stage: [
		<factorytech:compressor:0>,
		<factorytech:fridge:0>,
		<factorytech:machinepart:2>,
		<factorytech:machinepart:4>,
		<factorytech:machinepart:12>,
		<factorytech:machinepart:21>,
		<factorytech:machinepart:22>,
		<factorytech:machinepart:71>,	
		<factorytech:machinepart:72>,
		<factorytech:machinepart:130>,
		<factorytech:machinepart:150>,
		<factorytech:machinepart:161>,
		<factorytech:magcent:0>,
		<factorytech:oredrill:0>,
		<factorytech:salvagepart:161>,
		<factorytech:scaffold:0>,
		<factorytech:temperer:0>,
	],
};

static disabledItems as IIngredient[] = [
	<factorytech:autominer:0>,
	<factorytech:autopuller:0>,
	<factorytech:batterygen:0>,
	<factorytech:blockbreaker:0>,
	<factorytech:blowtorch:0>, 
	<factorytech:bottomhatch:0>,
	<factorytech:bulkmover:0>,
	<factorytech:charger:0>,
	<factorytech:circuit_intermediate:4>,
	<factorytech:circuit_intermediate:5>,
	<factorytech:circuit_intermediate:6>,
	<factorytech:circuit_intermediate:7>,
	<factorytech:circuit_intermediate:9>,
	<factorytech:circuit_intermediate:10>,
	<factorytech:circuit_intermediate:11>,
	<factorytech:circuit_intermediate:12>,
	<factorytech:compacthopper:0>,
	<factorytech:conveyor:0>,
	<factorytech:core_unfinished:*>,
	<factorytech:coregen:0>,
	<factorytech:craftstopper:0>,
	<factorytech:crucible:0>,
	<factorytech:deepdrill:0>,
	<factorytech:disassembler:0>,
	<factorytech:disruptor:0>,
	<factorytech:electroplater:0>,
	<factorytech:elementsword:0>,
	<factorytech:elevator:0>,
	<factorytech:energizer:0>,
	<factorytech:filtermover:0>,
	<factorytech:fluiddrill:0>,
	<factorytech:fluidpuller:0>,
	<factorytech:hardhat:0>,
	<factorytech:hatch:0>,
	<factorytech:inventorysensor:0>,
	<factorytech:intermediate:2>,
	<factorytech:iondisperser:0>,
	<factorytech:itempusher:0>,
	<factorytech:itemredis:0>,
	<factorytech:machinepart:3>,
	<factorytech:machinepart:13>,
	<factorytech:machinepart:30>,
	<factorytech:machinepart:140>,
	<factorytech:machinepart:141>,
	<factorytech:machinepart:170>,
	<factorytech:machinepart:180>,
	<factorytech:magnetblock:0>,
	<factorytech:magnetizer:0>,
	<factorytech:planeshifter:0>,
	<factorytech:planter:0>,
	<factorytech:pipe:0>,
	<factorytech:potionmixer:0>,
	<factorytech:probe:0>,
	<factorytech:propfurnace:0>,
	<factorytech:realelevator:0>,
	<factorytech:reclaimer:0>,
	<factorytech:rednotifier:0>,
	<factorytech:redwatcher:0>,
	<factorytech:safetyvest:0>,
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
	<factorytech:salvage:11>,
	<factorytech:salvage:170>,
	<factorytech:sequenceplacer:0>,
	<factorytech:sluice:0>,
	<factorytech:smokestack:0>,
	<factorytech:smokestack:1>,
	<factorytech:smokestack:2>,
	<factorytech:smokestack:3>,
	<factorytech:smokestack:4>,
	<factorytech:smokestack:5>,
	<factorytech:smokestack:6>,
	<factorytech:smokestack:7>,
	<factorytech:smokestack:8>,
	<factorytech:spawner:0>,
	<factorytech:stabilizer:0>,
	<factorytech:stackmover:0>,
	<factorytech:steeltoeboots:0>,
	<factorytech:tankblock:0>,
	<factorytech:teslacoil:0>,
	<factorytech:upgrade:0>,
	<factorytech:upgrade:1>,
	<factorytech:upgrade:2>,
	<factorytech:upgrade:3>,
	<factorytech:upgrade:4>,
	<factorytech:valve:0>,
	<factorytech:woodcutter:0>,
	<factorytech:workpants:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}