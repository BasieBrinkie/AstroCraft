import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<grapplemod:block_grapple_modifier:0>: [
		[
			[<ore:plankWood>, <ore:ingotCopper>, <ore:plankWood>],
			[<ore:ingotIron>, <minecraft:redstone:0>, <ore:ingotIron>],
			[<ore:plankWood>, <ore:ingotCopper>, <ore:plankWood>]
		]
	],
	<grapplemod:grapplinghook:0>: [
		[
			[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
			[null, <ore:factoryTechWire>, null],
			[null, <ore:factoryTechWire>, null]
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
	<grapplemod:doubleupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <thermalfoundation:tool.pickaxe_steel:0>]
	],
	<grapplemod:limitsupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <minecraft:diamond_ore:0>]
	],
	<grapplemod:magnetupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <factorytech:machinepart:130>]
	],
	<grapplemod:motorupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <ore:factoryTechMotor>]
	],
	<grapplemod:ropeupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <factorytech:machinepart:22>]
	],
	<grapplemod:swingupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <exnihilocreatio:item_material:2>]
	],
	<grapplemod:throwupgradeitem:0>: [
		[<grapplemod:baseupgradeitem:0>, <minecraft:wheat:0>]
	]

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