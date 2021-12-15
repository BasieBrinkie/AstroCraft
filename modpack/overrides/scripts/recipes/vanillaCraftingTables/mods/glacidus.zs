import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
    <glacidus:antinatric_axe>: [
        [
            [<glacidus:frozen_antinatric_stone:0>, <glacidus:frozen_antinatric_stone:0>, null],
            [<glacidus:frozen_antinatric_stone:0>, <glacidus:underground_stick:0>, null],
            [null, <glacidus:underground_stick:0>, null]
        ]
    ],
    <glacidus:antinatric_pickaxe>: [
        [
            [<glacidus:frozen_antinatric_stone:0>, <glacidus:frozen_antinatric_stone:0>, <glacidus:frozen_antinatric_stone:0>],
            [<glacidus:frozen_antinatric_stone:0>, <glacidus:underground_stick:0>, null],
            [null, <glacidus:underground_stick:0>, null]
        ]
    ],
    <glacidus:antinatric_hoe>: [
        [
            [<glacidus:frozen_antinatric_stone:0>, <glacidus:frozen_antinatric_stone:0>, null],
            [null, <glacidus:underground_stick:0>, null],
            [null, <glacidus:underground_stick:0>, null]
        ]
    ],
    <glacidus:antinatric_shovel>: [
        [
            [null, <glacidus:frozen_antinatric_stone:0>, null],
            [null, <glacidus:underground_stick:0>, null],
            [null, <glacidus:underground_stick:0>, null]
        ]
    ],
    <glacidus:antinatric_sword>: [
        [
            [null, <glacidus:frozen_antinatric_stone:0>, null],
            [null, <glacidus:frozen_antinatric_stone:0>, null],
            [null, <glacidus:underground_stick:0>, null]
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
    <glacidus:underground_stick:0> * 2: [
        [<glacidus:dead_lumicia:0>]
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
    <glacidus:thawed_antinatric_stone:0>: [
        <glacidus:frozen_antinatric_stone:0>
    ]
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