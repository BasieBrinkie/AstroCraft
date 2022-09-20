import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<botania:altar:0>: [
		[
			[<ore:slabCobblestone>, null, <ore:slabCobblestone>],
			[null, <ore:cobblestone>, null],
			[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
		]
	],
	<botania:livingrock0slab:0>: [
		[
			[<botania:livingrock:0>,<botania:livingrock:0>,<botania:livingrock:0>]
		]
	],
	<botania:pool:0>: [
		[
			[<botania:livingrock:0>, null, <botania:livingrock:0>],
			[<botania:livingrock:0>, <botania:livingrock:0>, <botania:livingrock:0>]
		]
	],
	<botania:pool:2>: [
		[
			[<botania:livingrock0slab:0>, null, <botania:livingrock0slab:0>],
			[<botania:livingrock:0>, <botania:livingrock:0>, <botania:livingrock:0>]
		]
	],
	<botania:twigwand>.withTag({color1: 3, color2: 3, boundTileZ: 0, boundTileX: 0, boundTileY: -1}): [
		[
			[null, <ore:petal>, <ore:livingwoodTwig>],
			[null, <ore:livingwoodTwig>, <ore:petal>],
			[<ore:livingwoodTwig>, null, null]
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
	<botania:lexicon>.withTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}): [
	[
		<ore:treeSapling>,
		<minecraft:book:0>
	]
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