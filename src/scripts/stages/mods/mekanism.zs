import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsResources1.stage: [
		<mekanism:sawdust:0>
	],
	stageAsteroidsAutomater.stage: [
		<mekanism:configurator:0>
	],
	stageAsteroidsAdvancedResources.stage: [
		<mekanism:basicblock:5>,
	],
	stageAsteroidsOxygenExtractor.stage: [
		<mekanism:shard:4>
	],
	stageAsteroidsAutomater.stage: [
		<mekanism:machineblock:15>,
		<mekanism:transmitter:1>.withTag({tier: 0}),
		<mekanism:transmitter:3>.withTag({tier: 0}),
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