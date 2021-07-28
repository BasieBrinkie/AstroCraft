import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsOxygenExtractor.stage: [
		<thebetweenlands:compost_block:0>,
		<thebetweenlands:fallen_leaves:0>,
		<thebetweenlands:items_misc:2>
	],
	stageGlacidusSpawn.stage: [
		<thebetweenlands:log_hearthgrove:1>,
		<thebetweenlands:log_weedwood>,
		<thebetweenlands:log_rotten_bark>,
		<thebetweenlands:rubber_tree_planks>,
		<thebetweenlands:weedwood_log_fence>,
		<thebetweenlands:rotten_plank_slab>,
		<thebetweenlands:tar_solid_slab>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}