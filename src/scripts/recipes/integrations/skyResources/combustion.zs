import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 combustion using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] is the output item.
	Second [IItemStack[]] is the input items.
	int is the required heat for combustion. 
	----------------------------------------------s------------------------------------------------
*/	


static combustionAdd as int[IItemStack[]][IItemStack] = {

	//Asteroids Advanced Resources
	<mekanism:dirtydust:3>: {[
		<mekanism:nugget:5>]: 100
	},
	<grapplemod:baseupgradeitem:0>: {[
		<minecraft:paper:0> * 3,
		<factorytech:ore_dust:5>]: 320,
	[
		<minecraft:paper:0> * 3,
		<immersiveengineering:metal:24>]: 320,
	[
		<minecraft:paper:0> * 3,
		<thermalfoundation:material:197>]: 320,
	},
	
	//Asteroids Oxygen One
	<exnihilocreatio:item_ore_iron:0> * 2: {[
		<exnihilocreatio:item_ore_iron:1> * 2,
		<charcoal_pit:item_ash:0> * 5]: 50
	},

	//Asteroids Basic Resources
	<minecraft:iron_ingot:0>: {[
		<minecraft:iron_nugget:0> * 3]: 80
	},	
	<tconstruct:soil:0>: {[
		<minecraft:gravel:0>, 
		<minecraft:coal:1>]: 60
	},

	//Asteroids Automater
	<advancedrocketry:blastbrick:0>: {[
		<minecraft:stonebrick:0> * 8,
		<actuallyadditions:item_crystal_shard:0>]: 880
	},

	//Rocket Builder
	<exnihilocreatio:item_ore_aluminum:0>: {[
		<exnihilocreatio:item_ore_aluminum:1>,
		<charcoal_pit:item_ash:0> * 2]: 40
	},	
	<exnihilocreatio:item_ore_nickel:0>: {[
		<exnihilocreatio:item_ore_nickel:1>,
		<charcoal_pit:item_ash:0>]: 20
	},
	<skyresources:orealchdust:17>: {[
		<thermalfoundation:material:199>]: 100
	},

	//Miner Tools
	<thermalfoundation:material:16>: {[
		<minecraft:diamond:0>]: 1500
	},
	<minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 35}]}): {[
		<minecraft:diamond_pickaxe:0>,
		<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35}]})]: 1200
	},


	//Oxygen Extractor
	<skyresources:alchemyitemcomponent:1> * 3: {[
		<mekanism:shard:4>]: 240
	},

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static combustionRemove as IItemStack[] = [
	<minecraft:blaze_powder:0>,
	<minecraft:coal:0>,
	<minecraft:diamond:0>,
	<minecraft:dirt:0>,
	<minecraft:end_stone:0>, 
	<minecraft:glowstone_dust:0>,
	<minecraft:gunpowder:0>,
	<minecraft:netherrack:0>,
	<minecraft:poisonous_potato:0>,
	<minecraft:prismarine_crystals:0>,
	<minecraft:prismarine_shard:0>,
	<minecraft:redstone:0>,
	<minecraft:sand:1>,
	<minecraft:slime_ball:0>,
	<minecraft:snowball:0>,
	<minecraft:wheat_seeds:0>,
	<skyresources:alchemyitemcomponent:2>,
	<skyresources:baseitemcomponent:3>,
	<skyresources:baseitemcomponent:7>,
	<skyresources:drycactus:0>,
	<skyresources:techitemcomponent:1>,
	<tconstruct:edible:1>,
	<tconstruct:edible:2>,
	<tconstruct:edible:4>

];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.combustionRemoveRecipe(combustionRemove);
	skyRes.combustionAddRecipe(combustionAdd);
}