import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageStart;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageDecoration;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<minecraft:cobblestone:0>,
		<minecraft:coal:1>,
		<minecraft:crafting_table:0>,
		<minecraft:dirt:0>,
		<minecraft:furnace:0>,
		<minecraft:lever:0>,
		<minecraft:log:0>,
		<minecraft:planks:0>,
		<minecraft:stone:0>,		
		<minecraft:stone_axe:*>,
		<minecraft:stone_shovel:*>,
		<minecraft:string:0>,
		<minecraft:wheat_seeds:0>,
		<minecraft:wooden_pickaxe:*>,
		<minecraft:wool:0>
	],
	stageResources1.stage: [
		<minecraft:bucket:0>,
		<minecraft:packed_ice:0>,
		<minecraft:stone_button:0>,
		<minecraft:stone_pressure_plate:0>,
		<minecraft:wooden_button:0>,
		<minecraft:wooden_pressure_plate:0>
	],

	stageDecoration.stage: [
		<minecraft:planks:1>,
		<minecraft:planks:2>,
		<minecraft:planks:3>,
		<minecraft:planks:4>,
		<minecraft:planks:5>,
		<minecraft:trapdoor:0>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}
