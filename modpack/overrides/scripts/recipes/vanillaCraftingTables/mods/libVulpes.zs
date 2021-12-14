import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<libvulpes:coalgenerator:0>: [
		[
			[<ore:stone>, <ore:plateCopper>, <ore:stone>],
			[<ore:stone>, <ore:allCoal>, <ore:stone>],
			[<ore:stone>, <ore:stone>, <ore:stone>]

		]
	],
	<libvulpes:coil0:4>: [
		[
			[null, <ore:blockCopper>, <ore:wire>],
			[<ore:wire>, <ore:blockCopper>, null],
			[null, <ore:blockCopper>, <ore:wire>]
		]
	],
	<libvulpes:hatch:0>: [
		[
			[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>],
			[<mekanism:transmitter:3>.withTag({tier: 0}), <factorytech:crate:0>,<mekanism:transmitter:3>.withTag({tier: 0})],
			[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>],
		]
	],
	<libvulpes:holoprojector:0>: [
		[
			[null, <factorytech:machinepart:111>, null],
			[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
		]
	],
	<libvulpes:linker:0>: [
		[
			[null, null, <ore:stickAluminum>],
			[<ore:ingotIron>, <factorytech:machinepart:121>, <ore:stickAluminum>],
			[null, <ore:ingotIron>, null]
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
	<libvulpes:hatch:0>: [
		[<libvulpes:hatch:1>]
	],
	<libvulpes:hatch:1>: [
		[<libvulpes:hatch:0>]
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