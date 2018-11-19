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
	----------------------------------------------------------------------------------------------
*/	


static combustionAdd as int[IItemStack[]][IItemStack] = {
	
	/*	
		---------------------------------------------
		Stage: Basic Resources
		---------------------------------------------
	*/	
	<exnihilocreatio:item_ore_iron:0>: {[
		<exnihilocreatio:item_ore_iron:1> * 2,
		<charcoal_pit:item_ash:0> * 5]: 50
	},
	<minecraft:iron_ingot:0>: {[
		<minecraft:iron_nugget:0> * 5]: 500
	}
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