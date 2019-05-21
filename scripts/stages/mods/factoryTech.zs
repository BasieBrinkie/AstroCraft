import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageStart;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageResources1.stage: [
		<factorytech:grindstone:0>,
		<factorytech:machinepart:50>,
		<factorytech:machinepart:72>
	]
};

static disabledItems as IIngredient[] = [
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