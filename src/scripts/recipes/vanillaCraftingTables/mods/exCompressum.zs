import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<excompressum:auto_sieve:0>: [
		[
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
			[<ore:paneGlass>, <ore:exCompressumHeavySieve>, <ore:paneGlass>],
			[<ore:stickAluminum>, <ore:blockIron>, <ore:stickAluminum>]
		]
	],
	<excompressum:compressed_crook>: [
		[	
			[<exnihilocreatio:crook_iron>, <exnihilocreatio:crook_iron>],
			[null, <exnihilocreatio:crook_iron>],
			[null, <exnihilocreatio:crook_iron>]
		]
	],
	<excompressum:compressed_hammer_diamond>: [
		[
			[<exnihilocreatio:hammer_diamond>, <exnihilocreatio:hammer_diamond>, <exnihilocreatio:hammer_diamond>],
			[<exnihilocreatio:hammer_diamond>, null, <exnihilocreatio:hammer_diamond>],
			[<exnihilocreatio:hammer_diamond>, <exnihilocreatio:hammer_diamond>, <exnihilocreatio:hammer_diamond>]
		]
	],
	<excompressum:compressed_hammer_iron>: [
		[
			[<exnihilocreatio:hammer_iron>, <exnihilocreatio:hammer_iron>, <exnihilocreatio:hammer_iron>],
			[<exnihilocreatio:hammer_iron>, null, <exnihilocreatio:hammer_iron>],
			[<exnihilocreatio:hammer_iron>, <exnihilocreatio:hammer_iron>, <exnihilocreatio:hammer_iron>]
		]
	],
	<excompressum:compressed_hammer_stone>: [
		[
			[<exnihilocreatio:hammer_stone>, <exnihilocreatio:hammer_stone>, <exnihilocreatio:hammer_stone>],
			[<exnihilocreatio:hammer_stone>, null, <exnihilocreatio:hammer_stone>],
			[<exnihilocreatio:hammer_stone>, <exnihilocreatio:hammer_stone>, <exnihilocreatio:hammer_stone>]
		]
	],
	<excompressum:compressed_hammer_wood>: [
		[
			[<exnihilocreatio:hammer_wood>, <exnihilocreatio:hammer_wood>, <exnihilocreatio:hammer_wood>],
			[<exnihilocreatio:hammer_wood>, null, <exnihilocreatio:hammer_wood>],
			[<exnihilocreatio:hammer_wood>, <exnihilocreatio:hammer_wood>, <exnihilocreatio:hammer_wood>]
		]
	],
	<excompressum:heavy_sieve:0>: [
		[
			[<ore:woodLog>, null, <ore:woodLog>],
			[<ore:woodLog>, <ore:woodSlabs>, <ore:woodLog>],
			[<ore:stickAluminum>, null, <ore:stickAluminum>]
		]
	],
	<excompressum:wooden_crucible>: [
		[
			[<ore:woodPlanksTier1>, null, <ore:woodPlanksTier1>],
			[<ore:woodPlanksTier1>, null, <ore:woodPlanksTier1>],
			[<ore:woodPlanksTier1>, <ore:woodSlabsTier1>, <ore:woodPlanksTier1>]
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
