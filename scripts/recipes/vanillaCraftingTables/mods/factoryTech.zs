import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<factorytech:centrifuge:0>: [
		[
			[<ore:ingotIron>, <ore:factoryTechShaft>, <ore:ingotIron>],
			[<factorytech:intermediate:4>, <ore:factoryTechGear>, null],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<factorytech:circuitscribe:0>: [
		[
			[<ore:stickAluminum>, <ore:factoryTechBlade>, null],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[null, <ore:blockIron>, null]
		]
	],
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
			[<ore:clumpCopper>, <ore:nuggetIron>, <ore:factoryTechShaft>],
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
	<factorytech:machinepart:11>: [
		[
			[null, <ore:nuggetIron>, null],
			[<ore:nuggetIron>, <ore:ingotIron>, <ore:nuggetIron>],
			[null, <ore:nuggetIron>, null]
		]
	],
	<factorytech:machinepart:20>: [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:glowstone_dust:0>],
			[<minecraft:glowstone_dust:0>, <minecraft:string:0>, <minecraft:glowstone_dust:0>],
			[<minecraft:glowstone_dust:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	],
	<factorytech:machinepart:40>: [
		[
			[null, <ore:nuggetIron>, null],
			[<ore:nuggetIron>, <ore:nuggetNickel>, <ore:nuggetIron>],
			[null, <ore:nuggetIron>, null]
		]
	],
	<factorytech:machinepart:60>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, null],
			[<ore:clumpCopper>, <ore:ingotIron>, <ore:factoryTechShaft>],
			[<ore:ingotIron>, <ore:ingotIron>, null]
		],
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, <factorytech:machinepart:20>],
			[<ore:nuggetlead>, <ore:nuggetIron>, <ore:factoryTechShaft>],
			[<ore:nuggetIron>, <ore:nuggetIron>, <factorytech:machinepart:20>]
		],
	],
	<factorytech:machinepart:80>: [
		[
			[null, <ore:stickWood>, null],
			[<ore:stickWood>, null, <ore:stickWood>],
			[<ore:clumpCopper>, null, <ore:clumpCopper>]
		]
	],
	<factorytech:metalcutter:0>: [
		[
			[<ore:ingotIron>, <ore:factoryTechBlade>, <ore:ingotIron>],
			[<ore:ingotIron>, <ore:factoryTechMotor>, <ore:ingotIron>],
			[<ore:stone>, null, <ore:stone>]
		]
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
			[<ore:factoryTechShaft>, <ore:factoryTechGear>, null],
			[<ore:stone>, <factorytech:intermediate:4>, <ore:stone>]
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
	<factorytech:handbook:0>: [
		[<factorytech:machinepart:50>.reuse() | <factorytech:machinepart:51>.reuse()]
	],
	<factorytech:machinepart:20>: [
		[<factorytech:salvagepart:20>, <minecraft:glowstone_dust:0> * 4]
	],
	<factorytech:machinepart:60>: [
		[<factorytech:intermediate:4> | <factorytech:salvagepart:60>, <factorytech:machinepart:20>]
	],
	<factorytech:machinepart:80>: [
		[<factorytech:salvagepart:80>, <ore:clumpCopper> * 2]
	],
	<factorytech:machinepart:120>: [
		[<factorytech:circuit_intermediate:3>, <matteroverdrive:tritanium_nugget:0>],
		[<factorytech:salvagepart:120>, <matteroverdrive:tritanium_nugget:0>]
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