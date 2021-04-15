import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidOxygen1.stage: [
		<actuallyadditions:item_worm:0>
	],
	stageAsteroidResources1.stage: [
		<actuallyadditions:block_compost:0>,
	],
	stageAsteroidAdvancedResources.stage: [
		<actuallyadditions:item_knife:0>,
	],
	stageFarmer1.stage: [
		<actuallyadditions:item_canola_seed:0>,
		<actuallyadditions:item_crystal_shard:4>,
		<actuallyadditions:item_misc:13>
	],
	stageBasicKnowledgeDecorator.stage: [
		<actuallyadditions:block_crystal_cluster_redstone:0>,
		<actuallyadditions:item_crystal_shard:0>
	],
};

static disabledItems as IIngredient[] = [
	<actuallyadditions:block_fermenting_barrel:0>,
	<actuallyadditions:item_dust:6>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}