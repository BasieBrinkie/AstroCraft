import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<nuclearcraft:geiger_counter:0>: [
		[
			[<ore:nuggetIridium>, <ore:ingotIron>, <ore:ingotIron>],
			[<ore:ingotCopper>, <minecraft:redstone:0>, <minecraft:redstone:0>],
			[<ore:factoryTechWire>, <ore:ingotIron>, <ore:ingotIron>]
		]
	],
	<nuclearcraft:ingot_block:0>: [	//Tier 1 Copper Block
		[
			[<mekanism:clump:3>, <mekanism:clump:3>, <mekanism:clump:3>],
			[<mekanism:clump:3>, <mekanism:clump:3>, <mekanism:clump:3>],
			[<mekanism:clump:3>, <mekanism:clump:3>, <mekanism:clump:3>]
		]
	],
	<nuclearcraft:radiation_badge:0>: [
		[
			[null, <ore:nuggetIron>, null],
			[<ore:nuggetIron>, <minecraft:redstone:0>, <ore:nuggetIron>],
			[null, <ore:nuggetIron>, null]
		]
	],
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