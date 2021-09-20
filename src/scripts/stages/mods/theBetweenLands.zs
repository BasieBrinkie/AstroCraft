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
		<thebetweenlands:log_weedwood:0>,
		<thebetweenlands:log_rotten_bark:0>,
		<thebetweenlands:rubber_tree_planks:0>,
		<thebetweenlands:weedwood_log_fence:0>,
		<thebetweenlands:rotten_plank_slab:0>,
		<thebetweenlands:swamp_talisman:0>,
		<thebetweenlands:tar_solid_slab:0>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}