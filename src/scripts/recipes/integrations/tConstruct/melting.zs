import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 rockgrinder using the skyresources wrapper
	possible actions: 
	- add output fluids for items.
	- remove existing fluids.

	Add method:
	[ILiquidStack] 	is the output Fluid also specify the amount of mB.
	[IIngredient[]] is the items that yield the output fluid.
	int 			is the temperature of the smeltery for it to work in °C.
	----------------------------------------------------------------------------------------------
*/	
static meltAdd as int[IIngredient[]][ILiquidStack] = {
	<liquid:iron> * 144: {
		[<mekanism:dirtydust:0>]: null
	}
};

static meltAddEntity as IEntityDefinition[][ILiquidStack] = {
			
};

static meltRemove as ILiquidStack[] = [ 
	//P1 - blacksmith
	<liquid:iron>
];

static meltRemovewithItem as IItemStack[][ILiquidStack] = {

};

function init() {
	tConstruct.meltRemove(meltRemove);
	tConstruct.meltRemoveWithItem(meltRemovewithItem);
	tConstruct.meltAdd(meltAdd);
	tConstruct.meltAddEntity(meltAddEntity);
}