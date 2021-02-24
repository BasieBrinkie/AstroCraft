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
	<exnihilocreatio:block_barrel0:0>: [
		[
			[<ore:woodPlanksTier1>, null, <ore:woodPlanksTier1>],
			[<ore:woodPlanksTier1>, null, <ore:woodPlanksTier1>],
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
		]
	],
	<exnihilocreatio:crook_iron>: [
		[
			[<actuallyadditions:item_knife:0>, <ore:ingotIron>],
			[null, <ore:ingotIron>],
			[null, <ore:ingotIron>]
		]
	],
	<exnihilocreatio:crook_wood>: [
		[
			[<actuallyadditions:item_knife:0>, <ore:stickWood>],
			[null, <ore:stickWood>],
			[null, <ore:stickWood>]
		]
	],
	<exnihilocreatio:hammer_diamond>: [
		[
			[null, <minecraft:diamond:0>, null],
			[null, <ore:stickAluminum>, <minecraft:diamond:0>],
			[<ore:stickAluminum>, null, null]
		]
	],
	<exnihilocreatio:hammer_iron>: [
		[
			[null, <ore:ingotIron>, null],
			[null, <ore:stickWood>, <ore:ingotIron>],
			[<ore:stickWood>, null, null]
		]
	],
	<exnihilocreatio:hammer_stone>: [
		[
			[null, <ore:stone>, null],
			[null, <ore:stickWood>, <ore:stone>],
			[<ore:stickWood>, null, null]
		]
	],
	<exnihilocreatio:hammer_wood>: [
		[
			[null, <ore:plankWood>, null],
			[null, <ore:stickWood>, <ore:plankWood>],
			[<ore:stickWood>, null, null]
		],
		[
			[null, <advancedrocketry:charcoallog:0>, null],
			[null, <ore:stickWood>, <advancedrocketry:charcoallog:0>],
			[<ore:stickWood>, null, null]
		]
	],
	<exnihilocreatio:item_mesh:1>: [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>],
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	],
	<exnihilocreatio:item_mesh:3>: [
		[
			[<factorytech:machinepart:21>, <factorytech:machinepart:21>, <factorytech:machinepart:21>],
			[<factorytech:machinepart:21>, <factorytech:machinepart:21>, <factorytech:machinepart:21>],
			[<factorytech:machinepart:21>, <factorytech:machinepart:21>, <factorytech:machinepart:21>]
		]
	],
	<exnihilocreatio:item_ore_copper:1>: [
		[
			[<exnihilocreatio:item_ore_copper:0>, <exnihilocreatio:item_ore_copper:0>],
			[<exnihilocreatio:item_ore_copper:0>, <exnihilocreatio:item_ore_copper:0>]
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
	<exnihilocreatio:item_pebble:0> * 16: [
		[<factorytech:salvagepart:0>]
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