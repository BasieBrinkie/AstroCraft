import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<skyresources:casing:0>: [
		[
			[<ore:stickTier1To3>, <ore:stickTier1To3>, <ore:stickTier1To3>],
			[<ore:stickTier1To3>, null, <ore:stickTier1To3>],
			[<ore:stickTier1To3>, <ore:stickTier1To3>, <ore:stickTier1To3>]
		]
	],
	<skyresources:casing:3>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[<ore:ingotIron>, null, <ore:ingotIron>],
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
		]
	],
	<skyresources:casing:4>: [
		[
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
			[<ore:ingotSteel>, null, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<skyresources:combustionheater:0>: [
		[
			[<ore:plankWood>, <ore:stone>, <ore:plankWood>],
			[<ore:plankWood>, <skyresources:heat:0>, <ore:plankWood>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<skyresources:combustionheater:3>: [
		[
			[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>],
			[<ore:blockIron>, <skyresources:heat:3>, <ore:blockIron>],
			[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
		]
	],
	<skyresources:combustionheater:4>: [
		[
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <skyresources:heat:4>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<skyresources:condenser:1>: [
		[
			[<ore:stone>, null, <ore:stone>],
			[<ore:stone>, <skyresources:heat:0>, <ore:stone>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<skyresources:condenser:3>: [
		[
			[<ore:blockIron>, null, <ore:blockIron>],
			[<ore:blockIron>, <skyresources:heat:3>, <ore:blockIron>],
			[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
		]
	],
	<skyresources:condenser:4>: [
		[
			[<ore:ingotSteel>, null, <ore:ingotSteel>],
			[<ore:ingotSteel>, <skyresources:heat:4>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<skyresources:crucible:0>: [
		[
			[<ore:stone>, null, <ore:stone>], 
			[<ore:stone>, null, <ore:stone>],
			[<ore:stone>, <ore:ingotIron>, <ore:stone>]
		]
	],
	<skyresources:fusiontable:0>: [
		[
			[<skyresources:alchemyitemcomponent:1>, <skyresources:alchemyitemcomponent:1>, <skyresources:alchemyitemcomponent:1>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<skyresources:heat:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:stone>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<skyresources:heat:3>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[<ore:ingotIron>, <ore:coal>, <ore:ingotIron>],
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
		]
	],
	<skyresources:heat:4>: [
		[
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:coke>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<skyresources:heatprovider:1>: [
		[
			[<ore:stone>, <skyresources:heat:0>, <ore:stone>],
			[<ore:stone>, <skyresources:heat:0>, <ore:stone>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<skyresources:heatprovider:3>: [
		[
			[<ore:blockIron>, <skyresources:heat:3>, <ore:blockIron>],
			[<ore:blockIron>, <skyresources:heat:3>, <ore:blockIron>],
			[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
		]
	],
	<skyresources:heatprovider:4>: [
		[
			[<ore:ingotSteel>, <skyresources:heat:4>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <skyresources:heat:4>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<skyresources:ironcuttingknife:0>: [
		[
			[<ore:ironIngot>, null, null],
			[<ore:ironIngot>, <ore:stickTier1To3>, null], 
			[null, <ore:ironIngot>, <ore:stickTier1To3>]
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
	<skyresources:stonegrinder:0>: [
		[
			[<ore:stone>, null, null],
			[null, <ore:stickTier1>, null],
			[null, null, <ore:stickTier1>]
		]
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*	
	------------------
    Shapeless Recipes.
    ------------------
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<skyresources:baseitemcomponent:4> * 2: [
			[<minecraft:dye:15> * 2, <actuallyadditions:item_crystal_shard:4>, <ore:flower>],
	],
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