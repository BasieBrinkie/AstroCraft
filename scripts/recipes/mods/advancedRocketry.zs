#priority 1000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	/*<galacticraftcore:machine:0>: [
		[
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>], 
			[<exnihilocreatio:item_pebble:0>, <ore:oreTin>|<ore:oreCopper>, <exnihilocreatio:item_pebble:0>],
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>]
		]
	]*/
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
    Recipe Removals.
    ----------------
*/
static removeRecipes as IItemStack[] = [];

static removeRecipesRegex as string[] = [];


/*
	----------------
	Furnace Recipes.
	----------------
*/
static removeFurnace as IIngredient[] = [];

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

	/*	-------------------
		Removal of Recipes.
		-------------------
	*/
	recipeBuilder.removeRecipes(removeRecipes);
	recipeBuilder.removeRecipesString(removeRecipesRegex);


	/*	----------------
		Furnace Recipes.
		----------------
	*/
	recipeBuilder.processFurnace(furnaceRecipes);
	recipeBuilder.removeFurnace(removeFurnace);
}