import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:anvil:0>: [
		[
			[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],
			[null, <ore:ingotIron>, null],
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
		]
	],
	<minecraft:book:0>: [
		[
			[<tconstruct:materials:15>, <minecraft:paper:0>, <tconstruct:materials:15>],
			[<tconstruct:materials:15>, <minecraft:paper:0>, <tconstruct:materials:15>],
			[<tconstruct:materials:15>, <minecraft:paper:0>, <tconstruct:materials:15>]
		]
	],
	<minecraft:bread:0>: [
		[
			[<minecraft:wheat:0>,<minecraft:wheat:0>,<minecraft:wheat:0>]
		]
	],
	<minecraft:bucket:0>: [
		[	
			[<ore:ingotIron>, null, <ore:ingotIron>],
			[null, <ore:ingotIron>, null]
		]
	],
	<minecraft:chest:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:nuggetIron>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:coal:1>: [
		[
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, null, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>]
		]
	],
	<minecraft:cobblestone:0>: [
		[
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>], 
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>],
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>]
		]
	],
	<minecraft:comparator:0>: [
		[
			[null, <minecraft:redstone_torch:0>, null],
			[<minecraft:redstone_torch:0>, <ore:plateCopper>, <minecraft:redstone_torch:0>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<minecraft:diamond_pickaxe>: [
		[
			[<thermalfoundation:material:16>, <thermalfoundation:material:16>, <thermalfoundation:material:16>],
			[null, <ore:stickAluminum>, null],
			[null, <ore:stickAluminum>, null]
		]
	],
	<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35}]}): [
		[
			[<minecraft:diamond:0>, <minecraft:redstone:0>, <minecraft:diamond:0>],
			[<thermalfoundation:material:135>, <minecraft:paper:0>, <thermalfoundation:material:135>],
			[<thermalfoundation:material:16>, <minecraft:redstone:0>, <thermalfoundation:material:16>]
		]
	],
	<minecraft:furnace:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <ore:allCoal>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]

		]
	],
	<minecraft:hopper:0>: [
		[
			[<ore:ingotIronTier2To4>, null, <ore:ingotIronTier2To4>],
			[<ore:ingotIronTier2To4>, <ore:chest>, <ore:ingotIronTier2To4>],
			[null, <ore:ingotIronTier2To4>, null]
		]
	],
	<minecraft:iron_axe>: [
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, null],
			[<ore:nuggetIron>, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_hoe>: [
		[
			[<ore:stickWood>, null, null],
			[<ore:nuggetIron>, <ore:stickWood>, null],
			[null, null, <ore:stickWood>]
		]
	],
	<minecraft:iron_pickaxe>: [
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:iron_pickaxe>: [
		[
			[null, <ore:ingotIron>, null],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:leaves:0>: [
		[
			[<thebetweenlands:fallen_leaves:0>, <thebetweenlands:fallen_leaves:0>, <thebetweenlands:fallen_leaves:0>],
			[<thebetweenlands:fallen_leaves:0>, <thebetweenlands:fallen_leaves:0>, <thebetweenlands:fallen_leaves:0>],
			[<thebetweenlands:fallen_leaves:0>, <thebetweenlands:fallen_leaves:0>, <thebetweenlands:fallen_leaves:0>]
		]
	],
	<minecraft:lever:0>: [
		[
			[<ore:stickWood>],
			[<minecraft:stone:0>]
		]
	],
	<minecraft:log:0>: [
		[
			[<minecraft:planks:0>, <minecraft:planks:0>]
		]
	],
	<minecraft:paper:0> * 2: [
		[
			[<mekanism:sawdust:0>, <mekanism:sawdust:0>, <mekanism:sawdust:0>]
		]
	],
	<minecraft:planks:0>: [
		[
			[<minecraft:log:0>]
		]
	],
	<minecraft:redstone_torch:0>: [
		[
			[<minecraft:redstone:0>],
			[<ore:stickWood>]
		]
	],
	<minecraft:repeater:0>: [
		[
			[<minecraft:redstone_torch:0>, <minecraft:redstone:0>, <minecraft:redstone_torch:0>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<minecraft:shears>: [
		[
			[null, <ore:ingotIron>],
			[<ore:ingotIron>, null]
		]
	],
	<minecraft:stone_axe>: [
		[
			[<minecraft:stone:0>, <minecraft:stone:0>, null],
			[<minecraft:stone:0>, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:stone_hoe>: [
		[
			[<ore:stickWood>, null, null],
			[<exnihilocreatio:item_pebble>, <ore:stickWood>, null],
			[null, null, <ore:stickWood>]
		]
	],
	<minecraft:stone_pickaxe>: [
		[
			[<ore:stone>, <ore:stone>, <ore:stone>],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:stone_pressure_plate:0>: [
		[
			[<ore:stone>, <ore:stone>]
		]
	],
	<minecraft:stone_shovel>: [
		[
			[<ore:stone>],
			[<ore:stickWood>],
			[<ore:stickWood>]
		]
	],
	<minecraft:stick:0> * 2: [
		[
			[<ore:plankWood>], 
			[<ore:plankWood>]
		],
		[
			[<advancedrocketry:charcoallog:0>],
			[<advancedrocketry:charcoallog:0>],
			[<advancedrocketry:charcoallog:0>]
		]
	],
	<minecraft:torch:0>: [
		[
			[<excompressum:uncompressed_coal:0>],
			[<ore:stickWood>]
		]
	],
	<minecraft:trapdoor>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<minecraft:wooden_axe>: [
		[
			[<ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>, null],
			[<ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:wooden_pickaxe>: [
		[
			[<ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:wooden_shovel>: [
		[
			[null, <ore:logWood> | <advancedrocketry:charcoallog:0>, null],
			[null, <ore:stickWood>, null],
			[null, <ore:stickWood>, null]
		]
	],
	<minecraft:wooden_pressure_plate:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>]
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
	<minecraft:dirt:0>: [
		[<minecraft:dirt:1>, <actuallyadditions:item_worm:0>]
	],
	<minecraft:flint_and_steel:0>: [
		[<ore:ingotIron>, <minecraft:flint:0>]
	],
	<minecraft:planks:0> * 2: [
		[<minecraft:log:0>]
	],
	<minecraft:pumpkin_pie:0> * 2: [
		[<minecraft:pumpkin:0>, <ore:flour>]
	],
	<minecraft:stone_button:0>: [
		[<ore:stone>]
	],
	<minecraft:wooden_button:0>: [
		[<ore:plankWood>]
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
	<minecraft:stone:0>: [<minecraft:cobblestone:0>],
	<minecraft:glass:0>: [<ore:sand>],
	<minecraft:wheat:0>: [<minecraft:wheat_seeds:0>],
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