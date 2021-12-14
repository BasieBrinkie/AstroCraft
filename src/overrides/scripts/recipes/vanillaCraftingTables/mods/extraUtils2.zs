import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
    <extrautils2:compresseddirt:0>: [
        [
            [<ore:normalDirt>, <ore:normalDirt>, <ore:normalDirt>],
            [<ore:normalDirt>, <ore:normalDirt>, <ore:normalDirt>],
            [<ore:normalDirt>, <ore:normalDirt>, <ore:normalDirt>]
        ]
    ],
    <extrautils2:compressedgravel:0>: [
        [
            [<ore:gravel>, <ore:gravel>, <ore:gravel>],
            [<ore:gravel>, <ore:gravel>, <ore:gravel>],
            [<ore:gravel>, <ore:gravel>, <ore:gravel>]
        ]
    ],
    <extrautils2:compressedsand:0>: [
        [
            [<ore:sand>, <ore:sand>, <ore:sand>],
            [<ore:sand>, <ore:sand>, <ore:sand>],
            [<ore:sand>, <ore:sand>, <ore:sand>]
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