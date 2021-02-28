import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 rockgrinder using the skyresources wrapper
	possible actions: 
	- add new casting w/o consumption.
	- remove existing castings.

	Add method:
	[IItemStack] 	is the output item.
	[IIngredient] 	is the cast material.
	[ILiquidStack] 	is the input Fluid.
	[int] 			is the amount of Fluid needed.
	int 			is the mount of time til casted.
	----------------------------------------------------------------------------------------------
*/	
static castingAddConsume as int[int][ILiquidStack][IIngredient][IItemStack] = {
	//Resources One
	<minecraft:paper:0>: {
		<mekanism:sawdust:0>: {
			<liquid:preheated_water>: {
				1000: 100
			}
		}
	},
	<skyresources:irongrinder>: {
		<ore:stickWood>: {
			<liquid:iron>: {
				144: 60
			}
		}
	},
	//Rocket Builder
	<factorytech:circuit_intermediate:8>: {
		<ore:dustLead>: {
			<liquid:iridium>: {
				1296: 800
			}
		}
	}
};

static castingAdd as int[int][ILiquidStack][IIngredient][IItemStack] = {
	
};

static castingRemove as IItemStack[] = [
	<minecraft:iron_ingot:0>,
];

function init() {
	tConstruct.castingRemove(castingRemove);
	tConstruct.castingAdd(castingAddConsume, true);
	tConstruct.castingAdd(castingAdd, false);
}