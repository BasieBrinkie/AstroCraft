import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<actuallyadditions:block_compost:0>: [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<actuallyadditions:item_knife:0>: [
		[
			[<ore:ingotIron>, null, null],
			[<ore:ingotIron>, <ore:stickWood>, null],
			[null, <ore:ingotIron>, <ore:stickWood>]
		]
	],
	<actuallyadditions:item_misc:11>: [
		[
			[<excompressum:uncompressed_coal:0>, <excompressum:uncompressed_coal:0>, <excompressum:uncompressed_coal:0>],
			[null, <excompressum:uncompressed_coal:0>, <excompressum:uncompressed_coal:0>],
			[null, null, <excompressum:uncompressed_coal:0>]
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
	<actuallyadditions:item_food:10> * 2: [
		[<actuallyadditions:item_knife:*>.transformDamage(99), <minecraft:bread:0>]
	],
	<actuallyadditions:item_misc:4> * 4: [
		[<actuallyadditions:item_knife:*>.transformDamage(), <minecraft:wheat:0> * 2]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	----------------
	Furnace Recipes.
	----------------
*/
static furnaceRecipes as IIngredient[][IItemStack] = {
	<actuallyadditions:item_food:15>: [
		<actuallyadditions:item_misc:4>
	]
};


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