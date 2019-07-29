import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<mekanism:transmitter:1>.withTag({tier: 0}) * 4: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[null, null, null],
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
		]
	],
	<mekanism:machineblock2:11>.withTag({tier: 0}): [
		[
			[<ore:stickAluminum>, <ore:plateIron>, <ore:stickAluminum>],
			[<ore:stickAluminum>, <ore:blockGlass>, <ore:stickAluminum>],
			[<ore:stickAluminum>, <ore:plateIron>, <ore:stickAluminum>]
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
	<mekanism:configurator:0>: [
		[<thermalfoundation:material:199>, <ore:stickAluminum>]
	],
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	----------------
	Furnace Recipes.
	----------------
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<mekanism:clump:3>: [<exnihilocreatio:item_ore_copper:1>]
};


function init() {
	/* 	
		----------------
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