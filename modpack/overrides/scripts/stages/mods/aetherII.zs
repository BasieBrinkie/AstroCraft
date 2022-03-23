import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageGlacidusSpawn.stage: [
		<aether:aether_crafting_table>
	]
};

static disabledItems as IIngredient[] = [
	<aether:aether_portal:0>,
    <aether:aether_teleporter:0>
	<aether:skyroot_bucket>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}