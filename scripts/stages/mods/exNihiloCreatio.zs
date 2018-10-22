import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageTheBeginning;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
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
	<exnihilocreatio:block_axle_stone:0>,
	<exnihilocreatio:block_grinder:0>,
	<exnihilocreatio:block_auto_sifter:0>,
	<exnihilocreatio:block_waterwheel:0>,
	<excompressum:bait:4>,
	<excompressum:bait:0>,
	<excompressum:bait:1>,
	<excompressum:bait:2>,
	<excompressum:bait:3>,
	<excompressum:bait:4>,
	<excompressum:bait:5>,
	<excompressum:bait:6>,
	<excompressum:bait:7>,
	<excompressum:bait:8>,
	<excompressum:bait:9>,
	<excompressum:bait:10>,
	<excompressum:bait:11>,
	<excompressum:bait:12>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}