import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 alchemical fusion using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack[]] is the array with all items that need to become a catalyst.
	float is the amount it adds. (consistent with usage in alchemical fusion) 
	----------------------------------------------------------------------------------------------
*/	


static fusionAdd as float[IItemStack[]][IItemStack] = { 
	//Asteroids Basic Resources
	<minecraft:iron_nugget:0>: {[
		<exnihilocreatio:item_ore_iron:0> * 2]: 0.04 
	},

	//Rocket Builder
	<libvulpes:productingot:9>: {[
		<libvulpes:productnugget:9> * 2,
		<minecraft:glowstone_dust:0>]: 0.05
	},

	//Professions Stage 1
	<minecraft:magma:0> * 4: {[
		<nuclearcraft:uranium:10>,
		<minecraft:cobblestone:0> * 32]: 0.5
	},
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static fusionRemove as IItemStack[] = [
	<minecraft:dirt:0>,
	<minecraft:sapling:5>,
	<skyresources:alchemyitemcomponent:1>,
	<skyresources:alchemyitemcomponent:3>,
	<skyresources:alchemyitemcomponent:4>,
	<skyresources:alchemyitemcomponent:5>,
	<skyresources:alchemyitemcomponent:6>,
	<skyresources:alchemyitemcomponent:7>,
	<skyresources:alchemyitemcomponent:8>,
	<skyresources:alchemyitemcomponent:10>,
	<skyresources:alchemicalglass:0>,
	<skyresources:magmafiedstone:0>,
	<skyresources:orealchdust:0>,
	<skyresources:orealchdust:1>,
	<skyresources:orealchdust:2>,
	<skyresources:orealchdust:3>,
	<skyresources:orealchdust:4>,
	<skyresources:orealchdust:5>,
	<skyresources:orealchdust:6>,
	<skyresources:orealchdust:7>,
	<skyresources:orealchdust:8>,
	<skyresources:orealchdust:9>,
	<skyresources:orealchdust:10>,
	<skyresources:orealchdust:11>,
	<skyresources:orealchdust:12>,
	<skyresources:orealchdust:13>,
	<skyresources:orealchdust:14>,
	<skyresources:orealchdust:15>,
	<skyresources:orealchdust:17>,
	<skyresources:orealchdust:18>,
	<skyresources:orealchdust:19>,
	<skyresources:orealchdust:20>,
	<skyresources:orealchdust:21>,
	<skyresources:orealchdust:22>,
	<skyresources:orealchdust:23>,
	<skyresources:orealchdust:24>,
	<skyresources:petrifiedwood:0>

];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.fusionRemoveRecipe(fusionRemove);
	skyRes.fusionAddRecipe(fusionAdd);
}