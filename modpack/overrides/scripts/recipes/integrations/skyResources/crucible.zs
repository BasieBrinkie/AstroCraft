import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 combustion using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] is the input item.
	Second ILiquidStack is the output liquid, add '* mBAmount' for the amount of liquid. 
	----------------------------------------------------------------------------------------------
*/	


static crucibleAdd as ILiquidStack[IItemStack] = {
	//Asteroids The Dawn of a New Age
	<skyresources:alchemyitemcomponent:1>: <liquid:oxygen> * 100,
	
	//Asteroids Basic Resources

	<mekanism:dirtydust:0>: <liquid:iron> * 108,
	<factorytech:salvagepart:50>: <liquid:iron> * 108,
	<contenttweaker:astro_ice:0>: <liquid:preheated_water> * 250, 
	
	//Rocket Builder

	<skyresources:orealchdust:17>: <liquid:iridium> * 108,
	<factorytech:salvagepart:1>: <liquid:iron> * 54, 
	<factorytech:salvagepart:11>: <liquid:iron> * 54,
	<factorytech:salvagepart:31>: <liquid:iron> * 54,
	<exnihilocreatio:item_ore_lead:0>: <liquid:lead> * 216,
	<factorytech:ore_dust:5>: <liquid:nickel> * 108,

	//Asteroids Advanced Resources

	<mekanism:nugget:5>: <liquid:copper> * 12, 
	<immersiveengineering:metal:20>: <liquid:copper> * 12, 
	<factorytech:ore_dust:4>: <liquid:copper> * 12,
	<mekanism:clump:3>: <liquid:copper> * 432, 
	<tconstruct:shard>.withTag({Material: "copper"}): <liquid:copper> * 432,

	//Decorator
	<minecraft:glass:0>: <liquid:glass> * 1296
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all recipes that you want to remove in an ILiquidStack array.
	----------------------------------------------------------------------------------------------
*/	

static crucibleRemove as ILiquidStack[] = [
	<liquid:srcrystalfluid>,
	<liquid:lava>

];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.crucibleRemoveRecipe(crucibleRemove);
	skyRes.crucibleAddRecipe(crucibleAdd);
}