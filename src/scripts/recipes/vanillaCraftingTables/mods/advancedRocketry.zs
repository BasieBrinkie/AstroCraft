import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<advancedrocketry:arcfurnace:0>: [
		[
			[<advancedrocketry:blastbrick:0>, <advancedrocketry:blastbrick:0>, <advancedrocketry:blastbrick:0>],
			[<advancedrocketry:blastbrick:0>, <advancedrocketry:misc:0>, <advancedrocketry:blastbrick:0>],
			[<advancedrocketry:blastbrick:0>, <advancedrocketry:blastbrick:0>, <advancedrocketry:blastbrick:0>]
		]
	],
	<advancedrocketry:fuelingstation:0>: [
		[
			[null, <ore:ingotAluminum>, null],
			[<ore:ingotIron>, <advancedrocketry:liquidtank:0>, <ore:ingotIron>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<advancedrocketry:fueltank:0>: [
		[
			[<ore:stickAluminum>, <ore:plateSteel>, <ore:stickAluminum>],
			[<ore:stickAluminum>, <ore:plateSteel>, <ore:stickAluminum>],
			[<ore:stickAluminum>, <ore:plateSteel>, <ore:stickAluminum>]
		]
	],
	<advancedrocketry:guidancecomputer:0>: [
		[
			[<factorytech:circuit_intermediate:0>, <ore:plateCopper>, <factorytech:circuit_intermediate:1>],
			[<factorytech:machinepart:121>, <ore:blockIron>, <factorytech:machinepart:111>],
			[<ore:plateCopper>,<skyresources:orealchdust:17>,<ore:plateCopper>]
		]
	],
	<advancedrocketry:launchpad:0> * 3: [
		[
			[<charcoal_pit:item_ash:0>, <tconstruct:materials:15>, <charcoal_pit:item_ash:0>],
			[<minecraft:sand:0>, <minecraft:sand:0>, <minecraft:sand:0>]
		]
	],
	<advancedrocketry:liquidtank:0>: [
		[
			[<ore:blockGlass>, <ore:ingotAluminum>, <ore:blockGlass>],
			[<ore:blockGlass>, null, <ore:blockGlass>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
		]
	],
	<advancedrocketry:loader:1>: [
		[
			[null, <ore:plateIron>, null],
			[<ore:plateIron>, <minecraft:chest:0>, <ore:plateIron>],
			[null, <ore:plateIron>, null]
		]
	],
	<advancedrocketry:misc:0>: [
		[
			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
			[<ore:dustIron>, <ore:dustIron>, <ore:dustIron>],
			[null, <factorytech:circuit_intermediate:1>, null]
		]
	],
	<advancedrocketry:platepress:0>: [
		[
			[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>], 
			[<minecraft:stone:0>, <ore:nuggetCopper> | <ore:ingotCopper> | <ore:clumpCopper>, <minecraft:stone:0>],
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
	<advancedrocketry:seat:0>: [
		[
			[<ore:blockWool>, null, null],
			[<ore:blockWool>, null ,null],
			[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]
		]
	],
	<advancedrocketry:stationbuilder:0>: [
		[
			[null, <factorytech:circuit_intermediate:1>, null],
			[<ore:ingotAluminum>, <ore:nuggetLead>, <ore:ingotAluminum>],
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
	<advancedrocketry:planetidchip:0>: [
		[<factorytech:circuit_intermediate:8>, <minecraft:diamond:0>, <libvulpes:linker:0>.reuse()]
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