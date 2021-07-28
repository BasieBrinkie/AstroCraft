import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsOxygen1.stage: [
		<minecraft:coal:1>,
		<minecraft:crafting_table:0>,
		<minecraft:dirt:0>,
		<minecraft:dirt:1>,
		<minecraft:lever:0>,
		<minecraft:log:0>,
		<minecraft:obsidian:0>,
		<minecraft:planks:0>,
		<minecraft:stick:0>,
		<minecraft:string:0>,
		<minecraft:wheat_seeds:0>,
		<minecraft:wheat:0>,
		<minecraft:wool:0>
	],
	stageFurnace.stage: [
		<minecraft:furnace:0>
	],
	stageStone.stage: [
		<minecraft:cobblestone:0>,
		<minecraft:stone:0>,		
	],
	stageWoodTools.stage: [
		<minecraft:wooden_axe>,
		<minecraft:wooden_pickaxe>,
		<minecraft:wooden_shovel>
	],
	stageStoneTools.stage: [
		<minecraft:stone_axe>,
		<minecraft:stone_hoe>,
		<minecraft:stone_pickaxe>,
		<minecraft:stone_shovel>,	
	],
	stageIronTools.stage: [
		<minecraft:iron_axe>,
		<minecraft:iron_hoe>,
		<minecraft:iron_pickaxe>,
		<minecraft:iron_shovel>,
	],
	stageDiamondPickaxe.stage: [
		<minecraft:diamond_pickaxe>,
	],
	stageAsteroidsResources1.stage: [
		<minecraft:book:0>,
		<minecraft:bread:0>,
		<minecraft:bucket:0>,
		<minecraft:chest:0>,
		<minecraft:glass:0>,
		<minecraft:glowstone_dust:0>,
		<minecraft:iron_ore:0>,
		<minecraft:paper:0>,
		<minecraft:sand:0>,
		<minecraft:stone_button:0>,
		<minecraft:stone_pressure_plate:0>,
		<minecraft:trapdoor:0>,
		<minecraft:wheat:0>,
		<minecraft:wooden_button:0>,
		<minecraft:wooden_pressure_plate:0>
	],
	stageAsteroidsAdvancedResources.stage: [
		<minecraft:coal:0>,
		<minecraft:comparator:0>,
		<minecraft:flint:0>,
		<minecraft:magma:0>,
		<minecraft:redstone:0>,
		<minecraft:redstone_torch:0>,
		<minecraft:repeater:0>,
		<minecraft:stonebrick:0>,
		<minecraft:water_bucket:0>,
	],
	stageLeaves.stage: [
		<minecraft:leaves:0>,
		<minecraft:sapling:0>,
	],
	stageAsteroidsAutomater.stage: [
		<minecraft:hopper:0>
	],
	stageFarmer1.stage: [
		<minecraft:melon:0>,
		<minecraft:melon_block:0>,
		<minecraft:melon_seeds:0>,
		<minecraft:pumpkin:0>,
		<minecraft:pumpkin_pie:0>,
		<minecraft:pumpkin_seeds:0>,
		<minecraft:dye:2>
	],
	stageMiner1.stage: [
		<minecraft:anvil:0>,
		<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35}]}),
		<minecraft:flint:0>,
		<minecraft:flint_and_steel:0>,
		<minecraft:gunpowder:0>,
		<minecraft:tnt:0>,
	],

	stageEmerald.stage: [
		<minecraft:emerald:0>
	],
	stageShears.stage: [
		<minecraft:shears>
	],
	stageBasicDecorator.stage: [
		<minecraft:clay:0>
	],
	stageBasicDecoratorToggle.stage: [
		<minecraft:glass_pane:0>,
		<minecraft:planks:1>,
		<minecraft:planks:2>,
		<minecraft:planks:3>,
		<minecraft:planks:4>,
		<minecraft:planks:5>,
		<minecraft:stained_glass_pane:0>,
		<minecraft:stained_glass_pane:1>,
		<minecraft:stained_glass_pane:2>,
		<minecraft:stained_glass_pane:3>,
		<minecraft:stained_glass_pane:4>,
		<minecraft:stained_glass_pane:5>,
		<minecraft:stained_glass_pane:6>,
		<minecraft:stained_glass_pane:7>,
		<minecraft:stained_glass_pane:8>,
		<minecraft:stained_glass_pane:9>,
		<minecraft:stained_glass_pane:10>,
		<minecraft:stained_glass_pane:11>,
		<minecraft:stained_glass_pane:12>,
		<minecraft:stained_glass_pane:13>,
		<minecraft:stained_glass_pane:14>,
		<minecraft:stained_glass_pane:15>,
		<minecraft:wool:1>,
		<minecraft:wool:2>,
		<minecraft:wool:3>,
		<minecraft:wool:4>,
		<minecraft:wool:5>,
		<minecraft:wool:6>,
		<minecraft:wool:7>,
		<minecraft:wool:8>,
		<minecraft:wool:9>,
		<minecraft:wool:10>,
		<minecraft:wool:11>,
		<minecraft:wool:12>,
		<minecraft:wool:13>,
		<minecraft:wool:14>,
		<minecraft:wool:15>,
	],

	stageBasicLogicalSystems1.stage: [
		<minecraft:dropper:0>,
		<minecraft:dispenser:0>
	],

	liquidLava.stage: [
		<minecraft:lava_bucket:0>
	],
};

static disabledItems as IIngredient[] = [
	<minecraft:wooden_hoe>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}
