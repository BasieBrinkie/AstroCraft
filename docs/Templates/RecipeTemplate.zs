/* 
	This is a template file for a standard recipe script
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<CraftingResult:meta> :[
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	],
	<CraftingResult:meta> :[
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<CraftingResult:meta> : {
		"Recipename": [
			[
				[<item:1>, <item:2>, <item:3>],
				[<item:4>, <item:5>, <item:6>],
				[<item:7>, <item:8>, <item:9>]
			]
	
		]
	},
	<CraftingResult:meta> : {
		"Recipename": [
			[
				[<item:1>, <item:2>, <item:3>],
				[<item:4>, <item:5>, <item:6>],
				[<item:7>, <item:8>, <item:9>]
			]
	
		]
	}
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<CraftingResult:meta> : [
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	],
	<CraftingResult:meta> : [
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
	<CraftingResult:meta> : {
		"Recipename": [
			[
				[<item:1>, <item:2>, <item:3>],
				[<item:4>, <item:5>, <item:6>],
				[<item:7>, <item:8>, <item:9>]
			]
	
		]
	},
	<CraftingResult:meta> : {
		"Recipename": [
			[
				[<item:1>, <item:2>, <item:3>],
				[<item:4>, <item:5>, <item:6>],
				[<item:7>, <item:8>, <item:9>]
			]
	
		]
	}
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<CraftingResult:meta> : [
		[<item:1>, <item:2>, <item:3>]
	],
	<CraftingResult:meta> : [
		[<item:1>, <item:2>, <item:3>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	<CraftingResult:meta> : {
		"Recipename": [
			[<item:1>, <item:2>, <item:3>],	
		]
	},
	<CraftingResult:meta> : {
		"Recipename": [
			[<item:1>, <item:2>, <item:3>]	
		]
	}
};

/*
    Recipe Removals
*/
static removeRecipes as IIngredient[] = [
	<item:1>,
	<item:2>
];

function init() {
	// Un-named recipes
	recipeBuilder.process(shapedRecipes, false);
    recipeBuilder.process(mirroredRecipes, true);
    recipeBuilder.process(shapelessRecipes);

	// Named recipes
	recipeBuilder.processNamed(namedShapedRecipes, false);
    recipeBuilder.processNamed(namedMirroredRecipes, true);
    recipeBuilder.processNamed(namedShapelessRecipes);

	recipeBuilder.removeRecipes(removeRecipes);
}