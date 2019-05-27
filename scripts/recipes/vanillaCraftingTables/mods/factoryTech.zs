import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<factorytech:grindstone:0>: [
		[
			[<ore:stone>, null, null], 
			[<ore:plankWood>, <ore:factoryTechShaft>, <ore:stone>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<factorytech:intermediate:4>: [
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, null],
			[<ore:nuggetLead>, <ore:nuggetIron>, <ore:factoryTechShaft>],
			[<ore:nuggetIron>, <ore:nuggetIron>, null]
		]
	],
	<factorytech:machinepart:10>: [
		[
			[null, <minecraft:cobblestone:0>, null],
			[<minecraft:cobblestone:0>, <ore:stone>, <minecraft:cobblestone:0>],
			[null, <minecraft:cobblestone:0>, null]
		]
	],
	<factorytech:machinepart:20>: [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:glowstone_dust:0>],
			[<minecraft:glowstone_dust:0>, <minecraft:string:0>, <minecraft:glowstone_dust:0>],
			[<minecraft:glowstone_dust:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	],
	<factorytech:machinepart:60>: [
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, null],
			[<ore:clumpCopper>, <ore:nuggetIron>, <ore:factoryTechShaft>],
			[<ore:nuggetIron>, <ore:nuggetIron>, null]
		],
	],
	<factorytech:oredrill:0>: [
		[
			[<ore:plankwood>, <factorytech:intermediate:4>, <ore:plankWood>],
			[<ore:stone>, <ore:factoryTechDrill>, <ore:stone>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<factorytech:saw:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:factoryTechShaft>, <ore:gear>, null],
			[<ore:stone>, <ore:stone>, <ore:stone>]
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
	<factorytech:machinepart:60>: [
		[<factorytech:intermediate:4> | <factorytech:salvagepart:60>, <factorytech:machinepart:20>]
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
	<factorytech:ore_dust:5>: [<factorytech:ore_dust:9>]
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