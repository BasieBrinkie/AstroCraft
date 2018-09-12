/* 
	This is a template file for a standard recipe script
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<CraftingResult:item:meta> :[
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	],
	<CraftingResult:item:meta> :[
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<CraftingResult:item:meta> : {
		"Recipename": [
			[
				[<item:1>, <item:2>, <item:3>],
				[<item:4>, <item:5>, <item:6>],
				[<item:7>, <item:8>, <item:9>]
			]
	
		]
	},
	<CraftingResult:item:meta> : {
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
	-----------------
    Mirrored Recipes.
    -----------------
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<CraftingResult:item:meta> : [
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	],
	<CraftingResult:item:meta> : [
		[
			[<item:1>, <item:2>, <item:3>],
			[<item:4>, <item:5>, <item:6>],
			[<item:7>, <item:8>, <item:9>]
		]
	
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
	<CraftingResult:item:meta> : {
		"Recipename": [
			[
				[<item:1>, <item:2>, <item:3>],
				[<item:4>, <item:5>, <item:6>],
				[<item:7>, <item:8>, <item:9>]
			]
	
		]
	},
	<CraftingResult:item:meta> : {
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
	------------------
    Shapeless Recipes.
    ------------------
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<CraftingResult:item:meta> : [
		[<item:1>, <item:2>, <item:3>]
	],
	<CraftingResult:item:meta> : [
		[<item:1>, <item:2>, <item:3>]
	]
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
	<CraftingResult:item:meta> : {
		"Recipename": [
			[<item:1>, <item:2>, <item:3>],	
		]
	},
	<CraftingResult:item:meta> : {
		"Recipename": [
			[<item:1>, <item:2>, <item:3>]	
		]
	}
};

/*	
	----------------
    Recipe Removals.
    ----------------
*/
static removeRecipes as IItemStack[] = [
	<item:1>,
	<item:2>
];

/*
	----------------------------------------------------------------------------------
	Remove Recipes by using regex (check if the name of the item has a matching name).
	----------------------------------------------------------------------------------
*/

static removeRecipesRegex as string[] = [
	"name",
	"name2"
];


/*
	----------------
	Furnace Recipes.
	----------------
*/
static removeFurnace as IIngredient[] = [
	<item:1>,
	<item:2>
];

static furnaceRecipes as IIngredient[][IItemStack] = {
	<FurnaceInput:item:meta>: [<FurnaceOutput:1>],
	<FurnaceInput:item:meta>: [<ore:First>, <ore:Two>]
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