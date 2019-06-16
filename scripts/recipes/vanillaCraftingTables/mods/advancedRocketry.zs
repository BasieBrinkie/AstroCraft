import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<advancedrocketry:fueltank:0>: [
		[
			[<ore:stickAluminum>, <ore:plateSteel>, <ore:stickAluminum>],
			[<ore:stickAluminum>, <ore:plateSteel>, <ore:stickAluminum>],
			[<ore:stickAluminum>, <ore:plateSteel>, <ore:stickAluminum>]
		]
	],
	<advancedrocketry:launchpad:0> * 3: [
		[
			[<charcoal_pit:item_ash:0>, <charcoal_pit:item_ash:0>, <charcoal_pit:item_ash:0>],
			[<minecraft:sand:0>, <minecraft:sand:0>, <minecraft:sand:0>]
		]
	],
	<advancedrocketry:loader:0>: [
		[
			[null, <ore:plateIron>, null],
			[<ore:plateIron>, <minecraft:chest:0>, <ore:plateIron>],
			[null, <ore:plateIron>, null]
		]
	],
	<advancedrocketry:platepress:0>: [
		[
			[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>], 
			[<minecraft:stone:0>, <ore:nuggetCopperTier1> | <ore:ingotCopperTier1to5>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<advancedrocketry:oxygencharger:0>: [
		[
			[null, <skyresources:alchemyitemcomponent:1>, null],
			[<minecraft:stone:0>, <libvulpes:productplate:4>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<advancedrocketry:rocketbuilder:0>: [
		[
			[<ore:ingotIron>, <ore:factoryTechWire>, <ore:ingotIron>],
			[<factorytech:circuit_intermediate:2>, <ore:blockIron>, <factorytech:circuit_intermediate:2>],
			[<ore:blockIron>, <ore:stone>, <ore:blockIron>]
		]
	],
	<advancedrocketry:stationbuilder:0>: [
		[
			[null, <ore:factoryTechCircuit>, null],
			[<ore:ingotAluminum>, <advancedrocketry:rocketbuilder:0>.reuse(), <ore:ingotAluminum>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<advancedrocketry:structuretower:0> * 5: [
		[
			[<ore:stickAluminum>, <ore:stickAluminum>, <ore:stickAluminum>],
			[null, <ore:stickAluminum>, null],
			[<ore:stickAluminum>, <ore:stickAluminum>, <ore:stickAluminum>]
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
	<advancedrocketry:spacestationchip:0>: [
		[<factorytech:circuit_intermediate:8>, <ore:nuggetNickel>, <libvulpes:linker:0>.reuse()]
	],
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