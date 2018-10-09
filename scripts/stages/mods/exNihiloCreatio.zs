import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageTheBeginning;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<exnihilocreatio:block_barrel0:0>,
		<exnihilocreatio:block_sieve:0>,
		<exnihilocreatio:hammer_stone:*>,
		<exnihilocreatio:item_material:2>,
		<exnihilocreatio:item_mesh:1>,
		<exnihilocreatio:item_ore_copper:0>,
		<exnihilocreatio:item_ore_copper:1>,
		<exnihilocreatio:item_pebble:0>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}