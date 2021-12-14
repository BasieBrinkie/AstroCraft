import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<littletiles:colortube:0>: [
		[
			[<ore:paper>],
			[<ore:ingotIron>]
		]
	],
	<littletiles:container:0>: [
		[
			[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
			[<ore:nuggetLead>, <minecraft:chest:0>, <ore:nuggetLead>],
			[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]
		]
	],
	<littletiles:grabber:0>: [
		[
			[null, <ore:nuggetLead>, <ore:nuggetLead>],
			[<ore:nuggetLead>, <ore:ingotLead>, <ore:ingotLead>],
			[null, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<littletiles:hammer>: [
		[
			[<ore:blockIron>, <ore:ingotIron>, <ore:ingotIron>],
			[null, <ore:nuggetLead>, null],
			[null, <ore:nuggetLead>, null]		
		]
	],
	<littletiles:ltcoloredblock:0> * 4: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>]
		]
	],
	<littletiles:recipe:0>: [
		[
			[<ore:paper>, null, <ore:paper>],
			[null, <ore:paper>, null],
			[<ore:paper>, null, <ore:paper>]
		]
	],
	<littletiles:recipeadvanced:0>: [
		[
			[<ore:paper>, <minecraft:redstone:0>, <ore:paper>],
			[<minecraft:redstone:0>, <ore:paper>, <minecraft:redstone:0>],
			[<ore:paper>, <minecraft:redstone:0>, <ore:paper>]
		]
	],
	<littletiles:saw:0>: [
		[
			[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
			[null, <ore:ingotSteel>, <ore:ingotSteel>]
		]
	],
	<littletiles:wrench:0>: [
		[
			[<ore:ingotSteel>, null, <ore:ingotSteel>],
			[null, <ore:ingotLead>, null],
			[null, <ore:ingotLead>, null]	
		]
	],

	//Littletiles exporter
	<littletiles:premade>.withTag({tiles: [{boxes: [[1, 0, 14, 15, 1, 15] as int[], [1, 0, 12, 15, 1, 13] as int[], [1, 0, 10, 15, 1, 11] as int[], [1, 0, 1, 15, 1, 2] as int[], [1, 0, 3, 15, 1, 4] as int[], [1, 0, 5, 15, 1, 6] as int[], [1, 1, 1, 15, 2, 15] as int[], [8, 13, 13, 11, 14, 14] as int[], [8, 13, 10, 11, 14, 11] as int[], [8, 13, 6, 11, 14, 7] as int[], [8, 13, 2, 11, 14, 3] as int[]], tile: {color: -8684677, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[12, 2, 13, 13, 3, 14] as int[], [12, 2, 7, 13, 3, 8] as int[], [13, 2, 7, 14, 5, 14] as int[], [6, 12, 10, 9, 13, 11] as int[], [10, 12, 10, 13, 13, 11] as int[], [10, 12, 2, 14, 13, 3] as int[], [10, 12, 6, 14, 13, 7] as int[], [5, 12, 2, 9, 13, 3] as int[], [5, 12, 6, 9, 13, 7] as int[], [6, 12, 13, 9, 13, 14] as int[], [10, 12, 13, 13, 13, 14] as int[]], tile: {color: -6513508, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[14, 3, 12, 15, 4, 13] as int[], [14, 3, 10, 15, 4, 11] as int[], [8, 13, 3, 9, 14, 6] as int[], [8, 13, 7, 9, 14, 10] as int[], [8, 13, 11, 9, 14, 13] as int[], [8, 11, 9, 9, 13, 10] as int[]], tile: {color: -15132391, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [14, 3, 8, 15, 4, 9] as int[], tile: {color: -6946816, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}, {boxes: [[9, 2, 12, 10, 5, 15] as int[], [7, 2, 12, 8, 5, 15] as int[], [5, 2, 12, 6, 5, 15] as int[]], tile: {color: -8698314, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[8, 2, 12, 9, 5, 15] as int[], [6, 2, 12, 7, 5, 15] as int[], [4, 2, 12, 5, 5, 15] as int[], [11, 3, 13, 12, 4, 14] as int[], [12, 3, 12, 13, 4, 14] as int[], [1, 3, 13, 3, 4, 14] as int[], [9, 2, 8, 10, 4, 9] as int[], [6, 2, 9, 10, 3, 10] as int[], [8, 6, 9, 9, 11, 10] as int[], [8, 6, 6, 9, 7, 9] as int[], [12, 3, 8, 13, 7, 9] as int[], [12, 6, 6, 13, 7, 8] as int[], [9, 6, 6, 12, 7, 7] as int[], [3, 2, 2, 4, 3, 4] as int[], [3, 2, 7, 4, 3, 11] as int[], [2, 2, 10, 3, 3, 11] as int[], [1, 2, 10, 2, 3, 14] as int[], [6, 2, 2, 7, 3, 9] as int[], [3, 2, 1, 7, 3, 2] as int[]], tile: {color: -6530747, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[10, 2, 12, 11, 5, 15] as int[], [3, 2, 12, 4, 5, 15] as int[], [8, 5, 7, 11, 6, 10] as int[], [12, 3, 2, 13, 4, 6] as int[]], tile: {color: -12961222, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[7, 2, 10, 8, 4, 11] as int[], [10, 2, 10, 11, 4, 11] as int[], [10, 2, 7, 11, 4, 8] as int[], [7, 4, 7, 11, 5, 11] as int[], [2, 2, 2, 3, 4, 3] as int[], [3, 3, 2, 5, 4, 3] as int[], [2, 3, 3, 5, 4, 9] as int[], [2, 2, 8, 3, 3, 9] as int[], [4, 2, 8, 5, 3, 9] as int[], [4, 2, 2, 5, 3, 3] as int[], [7, 2, 7, 8, 4, 8] as int[]], tile: {color: -10790053, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[9, 12, 9, 10, 13, 14] as int[], [9, 12, 1, 10, 13, 8] as int[], [9, 6, 8, 10, 13, 9] as int[]], tile: {color: -4342339, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[11, 3, 10, 13, 4, 11] as int[], [6, 3, 11, 12, 4, 12] as int[], [6, 4, 11, 7, 6, 12] as int[], [6, 5, 12, 7, 6, 13] as int[], [3, 5, 13, 7, 6, 14] as int[]], tile: {color: -14142117, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[3, 5, 3, 4, 6, 4] as int[], [3, 5, 5, 4, 6, 6] as int[], [3, 5, 7, 4, 6, 8] as int[]], tile: {meta: 2, block: "littletiles:lttransparentcoloredblock", tID: "BlockTileBlock"}, group: 1 as byte}, {boxes: [[3, 4, 3, 4, 5, 4] as int[], [3, 4, 5, 4, 5, 6] as int[], [3, 4, 7, 4, 5, 8] as int[]], tile: {color: -6537695, meta: 0, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[8, 3, 1, 14, 4, 2] as int[], [7, 2, 1, 8, 5, 5] as int[], [8, 4, 1, 14, 5, 5] as int[], [13, 4, 5, 14, 5, 6] as int[], [13, 3, 6, 14, 5, 7] as int[], [7, 4, 5, 13, 5, 7] as int[], [7, 2, 5, 8, 4, 7] as int[], [8, 2, 1, 14, 3, 7] as int[], [8, 3, 6, 13, 4, 7] as int[], [8, 3, 2, 12, 4, 6] as int[]], tile: {color: -12040120, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[8, 5, 3, 9, 6, 5] as int[], [10, 5, 2, 12, 6, 3] as int[], [12, 5, 3, 13, 6, 4] as int[], [12, 5, 5, 13, 6, 6] as int[], [9, 5, 5, 10, 6, 6] as int[]], tile: {color: -6450832, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[8, 5, 2, 10, 6, 3] as int[], [12, 5, 2, 13, 6, 3] as int[], [12, 5, 4, 13, 6, 5] as int[], [10, 5, 5, 12, 6, 6] as int[], [8, 5, 5, 9, 6, 6] as int[]], tile: {color: -8228786, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[9, 5, 3, 10, 6, 4] as int[], [11, 5, 4, 12, 6, 5] as int[]], tile: {color: -4024219, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[9, 5, 4, 11, 6, 5] as int[], [11, 5, 3, 12, 6, 4] as int[]], tile: {color: -2372171, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [10, 5, 3, 11, 6, 4] as int[], tile: {color: -2836856, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}], structure: {id: "exporter"}}): [
		[
			[null, <actuallyadditions:block_crystal_cluster_redstone>, null],
			[<ore:ingotSteel>, <minecraft:redstone_torch:0>, <ore:ingotSteel>],
			[<ore:ingotIron>, null, <ore:ingotIron>]
		]
	],
	//Littletiles importer
	<littletiles:premade>.withTag({tiles: [{boxes: [[14, 0, 1, 15, 1, 2] as int[], [14, 0, 14, 15, 1, 15] as int[], [1, 0, 14, 2, 1, 15] as int[], [1, 0, 1, 2, 1, 2] as int[], [1, 1, 1, 15, 2, 15] as int[]], tile: {meta: 1, block: "minecraft:planks", tID: "BlockTileBlock"}, group: 1 as byte}, {boxes: [[13, 3, 8, 14, 4, 10] as int[], [13, 3, 10, 14, 5, 11] as int[], [13, 5, 9, 14, 6, 11] as int[], [13, 4, 8, 14, 5, 9] as int[]], tile: {meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileBlock"}, group: 1 as byte}, {bBox: [4, 7, 13, 8, 8, 14] as int[], tile: {meta: 0, block: "minecraft:planks", tID: "BlockTileBlock"}}, {boxes: [[9, 2, 1, 10, 3, 8] as int[], [5, 3, 5, 8, 4, 7] as int[], [5, 2, 1, 9, 3, 7] as int[], [8, 3, 1, 10, 4, 2] as int[], [8, 3, 6, 10, 4, 7] as int[], [10, 2, 7, 14, 3, 8] as int[], [3, 3, 1, 8, 4, 5] as int[], [3, 4, 1, 10, 5, 7] as int[], [13, 6, 8, 14, 7, 11] as int[], [13, 3, 7, 14, 7, 8] as int[], [13, 3, 11, 14, 7, 15] as int[], [12, 3, 7, 13, 7, 14] as int[], [3, 5, 13, 4, 7, 14] as int[], [3, 5, 7, 4, 6, 13] as int[], [4, 6, 13, 12, 7, 14] as int[], [3, 6, 7, 12, 7, 13] as int[], [4, 3, 7, 12, 6, 15] as int[], [3, 5, 14, 4, 6, 15] as int[], [3, 6, 14, 13, 7, 15] as int[], [3, 3, 7, 4, 5, 15] as int[], [12, 3, 14, 13, 6, 15] as int[], [3, 2, 7, 9, 3, 14] as int[], [4, 2, 14, 12, 3, 15] as int[], [2, 2, 7, 3, 7, 8] as int[], [2, 3, 8, 3, 7, 9] as int[], [2, 2, 14, 3, 7, 15] as int[], [2, 3, 13, 3, 7, 14] as int[], [2, 2, 9, 3, 7, 13] as int[], [4, 3, 6, 5, 4, 7] as int[], [3, 2, 6, 4, 4, 7] as int[], [3, 3, 5, 5, 4, 6] as int[], [4, 2, 5, 5, 3, 7] as int[], [4, 2, 2, 5, 3, 3] as int[], [3, 2, 1, 5, 3, 2] as int[], [3, 2, 3, 5, 3, 5] as int[], [9, 2, 8, 13, 3, 14] as int[], [13, 2, 14, 14, 3, 15] as int[], [13, 2, 9, 14, 3, 13] as int[], [10, 8, 8, 13, 9, 14] as int[]], tile: {color: -4342339, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [8, 3, 2, 9, 4, 6] as int[], tile: {color: -12961222, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}, {boxes: [[14, 5, 13, 15, 6, 14] as int[], [14, 5, 11, 15, 6, 12] as int[], [14, 3, 11, 15, 4, 12] as int[], [13, 8, 12, 14, 9, 13] as int[], [13, 8, 9, 14, 9, 10] as int[]], tile: {color: -12040120, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [14, 3, 13, 15, 4, 14] as int[], tile: {color: -6946816, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}, {boxes: [[13, 4, 9, 14, 5, 10] as int[], [13, 5, 8, 14, 6, 9] as int[], [6, 10, 3, 7, 11, 4] as int[], [2, 2, 2, 3, 6, 3] as int[], [1, 2, 2, 2, 3, 11] as int[], [1, 3, 10, 2, 5, 11] as int[], [1, 4, 11, 2, 5, 13] as int[], [3, 5, 2, 6, 6, 3] as int[], [5, 5, 3, 6, 11, 4] as int[]], tile: {color: -15132391, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[12, 2, 14, 13, 3, 15] as int[], [3, 2, 14, 4, 3, 15] as int[], [2, 2, 8, 3, 3, 9] as int[], [2, 2, 13, 3, 3, 14] as int[], [3, 2, 5, 4, 3, 6] as int[], [3, 2, 2, 4, 3, 3] as int[], [13, 2, 8, 14, 3, 9] as int[], [13, 2, 13, 14, 3, 14] as int[], [10, 2, 2, 14, 3, 6] as int[]], tile: {color: -8684677, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[10, 3, 2, 12, 4, 3] as int[], [12, 3, 3, 13, 4, 4] as int[], [12, 3, 5, 13, 4, 6] as int[], [9, 3, 5, 10, 4, 6] as int[]], tile: {color: -6450832, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[9, 3, 2, 10, 4, 3] as int[], [12, 3, 2, 13, 4, 3] as int[], [12, 3, 4, 13, 4, 5] as int[], [10, 3, 5, 12, 4, 6] as int[]], tile: {color: -8228786, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[9, 3, 3, 10, 4, 4] as int[], [11, 3, 4, 12, 4, 5] as int[]], tile: {color: -4024219, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[9, 3, 4, 11, 4, 5] as int[], [11, 3, 3, 12, 4, 4] as int[]], tile: {color: -2372171, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [10, 3, 3, 11, 4, 4] as int[], tile: {color: -2836856, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}, {boxes: [[5, 12, 5, 8, 13, 6] as int[], [5, 8, 5, 8, 9, 6] as int[], [4, 9, 5, 5, 12, 6] as int[], [5, 9, 4, 8, 12, 5] as int[], [8, 9, 5, 9, 12, 6] as int[]], tile: {color: -6513508, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[6, 10, 5, 7, 11, 7] as int[], [6, 5, 3, 7, 10, 4] as int[], [3, 7, 12, 4, 8, 15] as int[]], tile: {color: -10790053, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[2, 3, 5, 3, 4, 7] as int[], [1, 3, 6, 2, 4, 8] as int[], [1, 3, 8, 2, 6, 9] as int[]], tile: {color: -14142117, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [9, 7, 8, 13, 8, 14] as int[], tile: {color: -5197648, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}, {boxes: [[9, 8, 11, 10, 9, 12] as int[], [8, 7, 11, 9, 9, 12] as int[], [5, 7, 11, 8, 8, 12] as int[], [5, 7, 7, 6, 8, 11] as int[], [5, 5, 6, 6, 8, 7] as int[]], tile: {color: -9430245, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}], structure: {id: "importer"}}): [
		[
			[<littletiles:hammer:0>.reuse(), <ore:ingotIron>, <ore:ingotIron>],
			[<ore:ingotIron>, null, <ore:ingotIron>],
		]
	],
	//Littletiles workbench
	<littletiles:premade>.withTag({tiles: [{boxes: [[2, 14, 4, 11, 16, 5] as int[], [0, 14, 4, 2, 16, 16] as int[], [0, 14, 3, 11, 16, 4] as int[], [11, 14, 3, 13, 16, 16] as int[], [10, 2, 6, 11, 4, 16] as int[], [10, 11, 6, 11, 13, 16] as int[], [2, 2, 6, 3, 4, 16] as int[], [2, 11, 6, 3, 13, 16] as int[], [3, 15, 0, 4, 16, 1] as int[], [3, 11, 0, 4, 14, 1] as int[], [2, 14, 30, 11, 16, 32] as int[], [0, 14, 16, 2, 16, 32] as int[], [11, 14, 16, 13, 16, 32] as int[], [10, 2, 16, 11, 4, 29] as int[], [10, 11, 16, 11, 13, 29] as int[], [2, 2, 16, 3, 4, 29] as int[], [2, 11, 16, 3, 13, 29] as int[], [9, 4, 28, 10, 11, 29] as int[], [9, 4, 22, 10, 11, 23] as int[], [9, 4, 16, 10, 11, 17] as int[], [3, 11, 16, 10, 12, 17] as int[], [15, 15, 26, 16, 16, 27] as int[], [15, 11, 26, 16, 14, 27] as int[], [3, 3, 28, 10, 4, 29] as int[], [3, 4, 16, 4, 5, 29] as int[], [3, 5, 16, 4, 11, 17] as int[], [3, 5, 28, 4, 11, 29] as int[], [4, 4, 16, 9, 5, 28] as int[]], tile: {meta: 1, block: "minecraft:planks", tID: "BlockTileBlock"}, group: 1 as byte}, {boxes: [[0, 0, 4, 13, 3, 6] as int[], [1, 14, 1, 6, 16, 2] as int[], [0, 11, 4, 13, 14, 6] as int[], [1, 3, 4, 3, 11, 6] as int[], [10, 3, 4, 12, 11, 6] as int[], [3, 15, 5, 10, 16, 16] as int[], [10, 15, 6, 11, 16, 13] as int[], [10, 15, 14, 11, 16, 16] as int[], [2, 15, 6, 3, 16, 13] as int[], [2, 15, 14, 3, 16, 16] as int[], [0, 11, 29, 13, 14, 31] as int[], [14, 14, 23, 15, 16, 30] as int[], [10, 3, 29, 12, 11, 31] as int[], [0, 0, 29, 13, 3, 31] as int[], [1, 3, 29, 3, 11, 31] as int[], [10, 15, 16, 11, 16, 21] as int[], [10, 15, 22, 11, 16, 29] as int[], [2, 15, 16, 3, 16, 21] as int[], [2, 15, 22, 3, 16, 29] as int[], [3, 15, 16, 10, 16, 30] as int[]], tile: {meta: 0, block: "minecraft:planks", tID: "BlockTileBlock"}, group: 1 as byte}, {boxes: [[3, 3, 6, 10, 4, 16] as int[], [3, 11, 17, 10, 12, 29] as int[], [3, 3, 16, 10, 4, 28] as int[], [3, 5, 17, 9, 11, 28] as int[], [4, 5, 16, 9, 11, 17] as int[], [4, 4, 28, 9, 11, 29] as int[], [9, 4, 17, 10, 11, 22] as int[], [9, 4, 23, 10, 11, 28] as int[]], tile: {meta: 2, block: "minecraft:planks", tID: "BlockTileBlock"}, group: 1 as byte}, {boxes: [[13, 8, 6, 14, 14, 7] as int[], [13, 8, 9, 14, 10, 12] as int[], [13, 10, 10, 14, 11, 11] as int[], [5, 9, 2, 6, 11, 3] as int[], [6, 10, 2, 8, 11, 3] as int[], [7, 9, 2, 8, 10, 3] as int[]], tile: {meta: 0, block: "minecraft:iron_block", tID: "BlockTileBlock"}, group: 1 as byte}, {boxes: [[1, 14, 2, 2, 15, 3] as int[], [5, 14, 2, 6, 15, 3] as int[], [3, 14, 0, 4, 15, 1] as int[], [3, 14, 2, 4, 15, 3] as int[], [5, 14, 0, 6, 15, 1] as int[], [1, 14, 0, 2, 15, 1] as int[], [11, 14, 2, 12, 15, 3] as int[], [7, 14, 2, 8, 15, 3] as int[], [13, 14, 5, 14, 15, 6] as int[], [13, 14, 9, 14, 15, 10] as int[], [13, 14, 28, 14, 15, 29] as int[], [15, 14, 28, 16, 15, 29] as int[], [13, 14, 24, 14, 15, 25] as int[], [15, 14, 24, 16, 15, 25] as int[], [13, 14, 26, 14, 15, 27] as int[], [15, 14, 26, 16, 15, 27] as int[]], tile: {color: -13421773, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {bBox: [9, 8, 2, 12, 10, 4] as int[], tile: {color: -15395563, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}}, {boxes: [[13, 15, 5, 14, 16, 7] as int[], [13, 13, 5, 14, 14, 6] as int[], [13, 11, 10, 14, 15, 11] as int[], [13, 9, 4, 14, 15, 5] as int[], [13, 8, 5, 14, 9, 6] as int[], [10, 10, 2, 11, 15, 3] as int[], [6, 11, 2, 7, 15, 3] as int[]], tile: {color: -12020497, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[10, 15, 5, 11, 16, 6] as int[], [2, 15, 5, 3, 16, 6] as int[], [10, 15, 13, 11, 16, 14] as int[], [2, 15, 13, 3, 16, 14] as int[], [10, 15, 29, 11, 16, 30] as int[], [2, 15, 29, 3, 16, 30] as int[], [10, 15, 21, 11, 16, 22] as int[], [2, 15, 21, 3, 16, 22] as int[]], tile: {color: -14606047, meta: 0, block: "minecraft:planks", tID: "BlockTileColored"}, group: 1 as byte}, {boxes: [[10, 8, 24, 11, 9, 25] as int[], [10, 8, 20, 11, 9, 21] as int[]], tile: {color: -14606047, meta: 10, block: "littletiles:ltcoloredblock", tID: "BlockTileColored"}, group: 1 as byte}], structure: {id: "workbench"}}): [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:ingotIron>, null, <ore:ingotIron>]
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
	<littletiles:chisel:0>.withTag({preview: {bBox: [0, 0, 0, 16, 16, 16] as int[], tile: {meta: 0, block: "minecraft:air", tID: "BlockTileBlock"}}, shape: "box", thickness: 1, hollow: 0 as byte}): [
		[
			[<ore:ingotAluminum>, null, null],
			[null, <ore:nuggetLead>, null],
			[null, null, <ore:nuggetLead>]
		]
	],
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*	
	------------------
    Shapeless Recipes.
    ------------------
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<littletiles:recipeadvanced:0>: [
		[<minecraft:redstone:0> * 4, <littletiles:recipe:0>]
	],
	<littletiles:ltstorageblocktile:0>: [
		[<minecraft:chest:0>, <littletiles:container:0>]
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