import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidResources1.stage: [
		<mekanism:sawdust:0>
	],
	stageRocketBuilder.stage: [
		<mekanism:configurator:0>
	],
	stageOxygenExtractor.stage: [
		<mekanism:shard:4>
	],
	stageTank1.stage: [
		<mekanism:machineblock2:11>.withTag({tier: 0})
	]
};

static disabledItems as IIngredient[] = [
	<mekanism:basicblock:3>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}