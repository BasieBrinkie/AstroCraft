import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:book:0>: [
		[
			[<tconstruct:materials:15>, <minecraft:paper:0>, <tconstruct:materials:15>],
			[<tconstruct:materials:15>, <minecraft:paper:0>, <tconstruct:materials:15>],
			[<tconstruct:materials:15>, <minecraft:paper:0>, <tconstruct:materials:15>]
		]
	],
	<minecraft:bucket:0>: [
		[	
			[<ore:ingotIron>, null, <ore:ingotIron>],
			[null, <ore:ingotIron>, null]
		]
	],
	<minecraft:chest:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:nuggetIron>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:coal:1>: [
		[
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, null, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>]
		]
	],
	<minecraft:cobblestone:0>: [
		[
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>], 
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>],
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>]
		]
	],
	<minecraft:comparator:0>: [
		[
			[null, <minecraft:redstone_torch:0>, null],
			[<minecraft:redstone_torch:0>, <ore:plateCopper>, <minecraft:redstone_torch:0>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<minecraft:furnace:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <ore:charcoal> | <ore:coal>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]

		]
	],
	<minecraft:lever:0>: [
		[
			[<ore:stickWood>],
			[<minecraft:stone:0>]
		]
	],
	<minecraft:paper:0> * 2: [
		[
			[<mekanism:sawdust:0>, <mekanism:sawdust:0>, <mekanism:sawdust:0>]
		]
	],
	<minecraft:redstone_torch:0>: [
		[
			[<minecraft:redstone:0>],
			[<ore:stickWood>]
		]
	],
	<minecraft:repeater:0>: [
		[
			[<minecraft:redstone_torch:0>, <minecraft:redstone:0>, <minecraft:redstone_torch:0>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<minecraft:stone_axe>: [
		[
			[<minecraft:stone:0>, <minecraft:stone:0>, null],
			[<minecraft:stone:0>, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:stone_hoe>: [
		[
			[<ore:stickWood>, null, null],
			[<exnihilocreatio:item_pebble>, <ore:stickWood>, null],
			[null, null, <ore:stickWood>]
		]
	],
	<minecraft:stone_pressure_plate:0>: [
		[
			[<ore:stone>, <ore:stone>]
		]
	],
	<minecraft:stone_shovel>: [
		[
			[<ore:stickWood>],
			[<ore:stickWood>],
			[<minecraft:stone:0>]
		]
	],
	<minecraft:stonebrick:0>: [
		[
			[<ore:stone>, <ore:stone>],
			[<ore:stone>, <ore:stone>]
		]
	],
	<minecraft:stick:0> * 2: [ //Tier 1 Stick
		[
			[<ore:plankWood>], 
			[<ore:plankWood>]
		]
	],
	<minecraft:torch:0>: [
		[
			[<excompressum:uncompressed_coal:0>],
			[<ore:stickWood>]
		]
	],
	<minecraft:trapdoor>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:wooden_hoe>: [
		[
			[<ore:plankWood>, <ore:plankWood>],
			[null, <ore:stickWood>],
			[null, <ore:stickWood>]
		]
	],
	<minecraft:wooden_pickaxe>: [
		[
			[<ore:logWood>, <ore:logWood>, <ore:logWood>],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:wooden_pressure_plate:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>]
		]
	] 
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*	
	-----------------
    Mirrored Recipes.
    -----------------
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*	
	------------------
    Shapeless Recipes.
    ------------------
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<minecraft:planks:0> * 2: [
		[<minecraft:log:0>]
	],
	<minecraft:stone_button:0>: [
		[<ore:stone>]
	],
	<minecraft:wooden_button:0>: [
		[<ore:plankWood>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	----------------
	Furnace Recipes.
	----------------
*/
static furnaceRecipes as IIngredient[][IItemStack] = {};


function init() {
	/* 	----------------
		Unnamed Recipes.
		----------------
	*/
	recipeBuilder.process(shapedRecipes, false);
    recipeBuilder.process(mirroredRecipes, true);
    recipeBuilder.processShapeless(shapelessRecipes);

	/*	--------------
		Named Recipes.
		--------------
	*/
	recipeBuilder.processNamed(namedShapedRecipes, false);
    recipeBuilder.processNamed(namedMirroredRecipes, true);
    recipeBuilder.processShapelessNamed(namedShapelessRecipes);

	/*	----------------
		Furnace Recipes.
		----------------
	*/
	recipeBuilder.processFurnace(furnaceRecipes);
}