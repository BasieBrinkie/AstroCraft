import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<factorytech:agitator:0>: [
		[
			[null, <ore:factoryTechMotor>, null],
			[<advancedrocketry:liquidtank:0>, <factorytech:machinepart:40>, <advancedrocketry:liquidtank>],
			[<ore:ingotIron>, <ore:ingotAluminum>, <ore:ingotIron>]
		]
	],
	<factorytech:centrifuge:0>: [
		[
			[<ore:ingotIron>, <ore:factoryTechShaft>, <ore:ingotIron>],
			[<ore:factoryTechMotor>, <ore:factoryTechGear>, null],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<factorytech:circuitscribe:0>: [
		[
			[<ore:stickAluminum>, <ore:factoryTechKnifeBlade>, null],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[null, <ore:blockIron>, null]
		]
	],
	<factorytech:compressor:0>: [
		[
			[null, <advancedrocketry:platepress:0>, null],
			[<ore:ingotIron>, <skyresources:casing:3>, <ore:ingotIron>],
			[<ore:stone>, <ore:blockIron>, <ore:stone>]
		]
	],
	<factorytech:fridge:0>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[<ore:plateCopper>, <minecraft:packed_ice:0>, <ore:plateCopper>],
			[<ore:stone>, <ore:blockIron>, <ore:stone>]
		]
	],
	<factorytech:grindstone:0>: [
		[
			[<ore:stone>, null, null], 
			[<ore:plankWood>, <ore:factoryTechShaft>, <ore:stone>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<factorytech:htfurnace:0>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[<ore:ingotIron>, <minecraft:furnace:0>, <ore:ingotIron>],
			[<ore:plateCopper>, <ore:allCoal>, <ore:plateCopper>]
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
	<factorytech:machinepart:14>: [
		[
			[null, <ore:nuggetSteel>, null],
			[<ore:nuggetSteel>, <ore:ingotSteel>, <ore:nuggetSteel>],
			[null, <ore:nuggetSteel>, null]
		]
	],
	<factorytech:machinepart:20>: [
		[
			[<minecraft:string:0>, <minecraft:string:0>, <minecraft:glowstone_dust:0>],
			[<minecraft:glowstone_dust:0>, <minecraft:string:0>, <minecraft:glowstone_dust:0>],
			[<minecraft:glowstone_dust:0>, <minecraft:string:0>, <minecraft:string:0>]
		]
	],
	<factorytech:machinepart:21>: [
		[
			[<minecraft:flint:0>, <ore:ingotCopper>, <minecraft:flint:0>],
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
			[<ore:nuggetIron>, <ore:nuggetIron>, <ore:factoryTechWire>],
			[<ore:clumpCopper>, <ore:nuggetIron>, <ore:factoryTechShaft>],
			[<ore:nuggetIron>, <ore:nuggetIron>, <ore:factoryTechWire>]
		],
		[
			[<ore:ingotIron>, <ore:ingotIron>, null],
			[<ore:clumpCopper>, <ore:ingotIron>, <ore:factoryTechShaft>],
			[<ore:ingotIron>, <ore:ingotIron>, null]
		],
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, null],
			[<ore:nuggetLead>, <ore:nuggetIron>, <ore:factoryTechShaft>],
			[<ore:nuggetIron>, <ore:nuggetIron>, null]
		],
	],
	<factorytech:machinepart:80>: [
		[
			[null, <ore:stickWood>, null],
			[<ore:stickWood>, null, <ore:stickWood>],
			[<ore:clumpCopper>, null, <ore:clumpCopper>]
		]
	],
	<factorytech:magcent:0>: [
		[
			[<ore:ingotIron>, <ore:factoryTechShaft>, <ore:ingotIron>],
			[<ore:factoryTechMotor>, <ore:factoryTechGear>, null],
			[<ore:blockIron>, <factorytech:machinepart:130>, <ore:blockIron>]
		]
	],
	<factorytech:metalcutter:0>: [
		[
			[<ore:ingotIron>, <ore:factoryTechKnifeBlade>, <ore:ingotIron>],
			[<ore:ingotIron>, <ore:factoryTechMotor>, <ore:ingotIron>],
			[<ore:stone>, null, <ore:stone>]
		]
	],
	<factorytech:oredrill:0>: [
		[
			[<ore:plankwood>, <ore:factoryTechMotor>, <ore:plankWood>],
			[<ore:stone>, <ore:factoryTechDrill>, <ore:stone>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<factorytech:saw:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:factoryTechShaft>, <ore:factoryTechGear>, null],
			[<ore:stone>, <ore:factoryTechMotor>, <ore:stone>]
		]
	],
	<factorytech:scaffold:0> * 4: [
		[
			[<enderutilities:floor:0>, <enderutilities:floor:0>, <enderutilities:floor:0>],
			[<ore:ingotIron>, null, <ore:ingotIron>]
		]
	],
	<factorytech:temperer:0>: [
		[
			[null, <ore:factoryTechWire>, null],
			[<ore:blockIron>, <ore:blockCopper>, <ore:blockIron>],
			[<ore:stickWood>, null,<ore:stickWood>]
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
	<factorytech:handbook:0>: [
		[<factorytech:machinepart:50>.reuse() | <factorytech:machinepart:51>.reuse()]
	],
	<factorytech:machinepart:20>: [
		[<factorytech:salvagepart:20>, <minecraft:glowstone_dust:0> * 4]
	],
	<factorytech:machinepart:60>: [
		[<factorytech:salvagepart:60>, <ore:factoryTechWire> * 2]
	],
	<factorytech:machinepart:80>: [
		[<factorytech:salvagepart:80>, <ore:clumpCopper> * 2]
	],
	<factorytech:machinepart:111>: [
		[<factorytech:circuit_intermediate:2>, <matteroverdrive:tritanium_nugget:0>],
		[<factorytech:salvagepart:111>, <matteroverdrive:tritanium_nugget:0>]
	],
	<factorytech:machinepart:121>: [
		[<factorytech:circuit_intermediate:3>, <matteroverdrive:tritanium_nugget:0>],
		[<factorytech:salvagepart:121>, <matteroverdrive:tritanium_nugget:0>]
	],
	<factorytech:machinepart:161>: [
		[<factorytech:salvagepart:161>, <ore:factoryTechShaft>]
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