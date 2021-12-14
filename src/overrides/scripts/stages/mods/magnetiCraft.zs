import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageGlacidusSpawn.stage: [
        <magneticraft:crushing_table:0>
	]
};

static disabledItems as IIngredient[] = [
	<magneticraft:iron_hammer>,
	<magneticraft:steel_hammer>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}