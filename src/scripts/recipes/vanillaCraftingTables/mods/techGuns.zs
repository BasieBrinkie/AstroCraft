import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
    <techguns:explosive_charge:1> * 2: [
        [
            [null, <minecraft:tnt:0>, null],
            [<minecraft:tnt:0>, <techguns:explosive_charge:0>, <minecraft:tnt:0>],
            [<minecraft:tnt:0>, <skyresources:orealchdust:17>, <minecraft:tnt:0>]
        ]
    ],
	<techguns:itemshared:146>: [
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
			[<ore:nuggetIron>, <mekanism:machineblock2:11>.withTag({tier: 0}), <ore:nuggetIron>],
			[<ore:nuggetIron>, null, <ore:nuggetIron>]
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
static furnaceRecipes as IIngredient[][IItemStack] = {
	<tconstruct:materials:0> * 2: [
		<tconstruct:soil:0>
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