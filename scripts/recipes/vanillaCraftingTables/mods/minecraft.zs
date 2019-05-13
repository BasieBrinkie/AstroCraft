import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:bucket:0>: [
		[	
			[<ore:ingotIronTier1To2>, null, <ore:ingotIronTier1To2>],
			[<ore:ingotIronTier1To2>, null, <ore:ingotIronTier1To2>],
			[null, <ore:ingotIronTier1To2>, null]
		]
	],
	<minecraft:chest:0>: [
		[
			[<ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>],
			[<ore:woodPlanksTier1To3>, <minecraft:iron_nugget>, <ore:woodPlanksTier1To3>],
			[<ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>]
		]
	],
	<minecraft:cobblestone:0>: [
		[
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>], 
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>],
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>]
		]
	],
	<minecraft:coal:1>: [
		[
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, null, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>]
		]
	],
	<minecraft:lever:0>: [
		[
			[<ore:stickTier1To3>],
			[<minecraft:stone:0>]
		]
	],
	<minecraft:furnace:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <ore:charcoal> | <ore:coal>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]

		]
	],
	<minecraft:stone_axe>: [
		[
			[<minecraft:stone:0>, <minecraft:stone:0>, null],
			[<minecraft:stone:0>, <ore:woodstickTier1To3>, null],
			[null, <ore:stickTier1To3>, null]

		]
	],
	<minecraft:stone_hoe>: [
		[
			[<ore:stickTier1To3>, null, null],
			[<exnihilocreatio:item_pebble>, <ore:stickTier1To3>, null],
			[null, null, <ore:stickTier1To3>]
		]
	],
	<minecraft:stone_shovel>: [
		[
			[<ore:stickTier1To3>],
			[<ore:stickTier1To3>],
			[<minecraft:stone:0>]
		]
	],
	<minecraft:stick:0>: [ //Tier 1 Stick
		[
			[<advancedrocketry:charcoallog:0>], 
			[<advancedrocketry:charcoallog:0>]
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
			[<ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>],
			[<ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>, <ore:woodPlanksTier1To3>]
		]
	],
	<minecraft:wooden_pickaxe>: [
		[
			[<advancedrocketry:charcoallog:0>, <advancedrocketry:charcoallog:0>, <advancedrocketry:charcoallog:0>],
			[null, <ore:stickTier1To3>, null],
			[null, <ore:stickTier1To3>, null]
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
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	----------------
	Furnace Recipes.
	----------------
*/
static furnaceRecipes as IIngredient[IItemStack] = {};


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