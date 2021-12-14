import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsOxygen1.stage: [
		<actuallyadditions:item_worm:0>
	],
	stageAsteroidsResources1.stage: [
		<actuallyadditions:block_compost:0>,
	],
	stageAsteroidsAdvancedResources.stage: [
		<actuallyadditions:item_knife:*>,
		<actuallyadditions:item_food:10>,
		<actuallyadditions:item_food:15>,
		<actuallyadditions:item_misc:4>
	],
	stageBasicNuclearManagement.stage: [
		<actuallyadditions:item_crystal:0>
	],
	stageFarmer1.stage: [
		<actuallyadditions:item_canola_seed:0>,
		<actuallyadditions:item_crystal_shard:4>,
		<actuallyadditions:item_misc:13>
	],
	stageBasicDecorator.stage: [
		<actuallyadditions:block_crystal_cluster_redstone:0>,
		<actuallyadditions:item_crystal_shard:0>
	],
	
	stageGlacidusSpawn.stage: [
		<actuallyadditions:item_misc:9>,
		<actuallyadditions:item_misc:12>
	]
};

static disabledItems as IIngredient[] = [
	<actuallyadditions:block_fermenting_barrel:0>,
	<actuallyadditions:block_furnace_solar:0>,
	<actuallyadditions:item_dust:6>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}