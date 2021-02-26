import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<architecturecraft:sawbench:0>: [
		[
			[<ore:plateIron>, <ore:factoryTechSawBlade>, <ore:plateIron>],
			[<ore:stickWood>, <ore:plateIron>, <ore:stickWood>],
			[<ore:stickWood>, null, <ore:stickWood>]
		]
	],
    <architecturecraft:hammer:0>: [
        [
            [<ore:blockIron>, <ore:ingotIron>, null],
            [null, <ore:allStick>, <ore:ingotIron>],
            [null, <ore:allStick>, null]
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
    <architecturecraft:chisel:0>: [
        [
            [<ore:blockIron>, null, null],
            [null, <ore:plankWood>, null],
            [null, null, <ore:plankWood>]
        ]
    ],
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