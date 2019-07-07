import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageProfessionsStage1;
import scripts.stages.register.stageProfessionsStage2;
import scripts.stages.register.stageProfessionsStage3;
import scripts.stages.register.stageProfessionsStage4;
import scripts.stages.register.stageProfessionsStage5;

import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageRocketBuilder;
import scripts.stages.register.stageOxygenExtractor;
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageDecorationEnable;

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
		<minecraft:book:0>,
		<minecraft:bucket:0>,
		<minecraft:chest:0>,
		<minecraft:glass:0>,
		<minecraft:glowstone_dust:0>,
		<minecraft:iron_ore:0>,
		<minecraft:packed_ice:0>,
		<minecraft:paper:0>,
		<minecraft:sand:0>,
		<minecraft:stone_button:0>,
		<minecraft:stone_hoe:*>,
		<minecraft:stone_pressure_plate:0>,
		<minecraft:wheat:0>,
		<minecraft:wooden_button:0>,
		<minecraft:wooden_pressure_plate:0>
	],
	stageProfessionsStage1.stage: [
		<minecraft:comparator:0>,
		<minecraft:redstone_torch:0>,
		<minecraft:repeater:0>,
		<minecraft:stonebrick:0>,
	],

	stageDecorationEnable.stage: [
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
