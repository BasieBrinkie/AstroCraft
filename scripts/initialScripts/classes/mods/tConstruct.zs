#priority 9500
#modloaded tconstruct
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Fuel;
import mods.tconstruct.Melting;

zenClass tConstruct {
	zenConstructor() {}

	function alloyAdd(map as ILiquidStack[][ILiquidStack]) {
		for outputLiquid, inputLiquids in map {
			Alloy.addRecipe(outputLiquid, inputLiquids);
		}
	}

	function alloyRemove(map as ILiquidStack[]) {
		for outputLiquid in map {
			Alloy.removeRecipe(outputLiquid);
		}
	}

	function alloyRemove(map as ILiquidStack[][ILiquidStack]) {
		for outputLiquid, inputLiquids in map {
			Alloy.removeRecipe(outputLiquid, inputLiquids);
		}
	}

	function castingAdd(map as int[ILiquidStack][IIngredient][IItemStack]) {
		for output, array in map {
			for cast, array2 in array {
				for inputFluid, fluidAmount in array2 {
					Casting.addTableRecipe(output, cast, inputFluid, fluidAmount);
				}
			}
		}
	}

	function castingAdd(map as int[ILiquidStack][IIngredient][IItemStack], consume as bool) {
		for output, array in map {
			for cast, array2 in array {
				for inputFluid, fluidAmount in array2 {
					Casting.addTableRecipe(output, cast, inputFluid, fluidAmount, consume);
				}
			}
		}
	}	

	function castingRemove(map as IItemStack[]) {
		for output in map {
			Casting.removeTableRecipe(output);
		}
	}

	function castingRemove(map as ILiquidStack[IItemStack]) {
		for output, inputFluid in map {
			Casting.removeTableRecipe(output, inputFluid);
		}
	}

	function basinAdd(map as int[ILiquidStack][IIngredient][IItemStack]) {
		for output, array in map {
			for cast, array2 in array {
				for inputFluid, fluidAmount in array2 {
					Casting.addBasinRecipe(output, cast, inputFluid, fluidAmount);
				}
			}
		}
	}

	function basinAdd(map as int[ILiquidStack][IIngredient][IItemStack], consume as bool) {
		for output, array in map {
			for cast, array2 in array {
				for inputFluid, fluidAmount in array2 {
					Casting.addBasinRecipe(output, cast, inputFluid, fluidAmount, consume);
				}
			}
		}
	}

	function basinRemove(map as IItemStack[]) {
		for output in map {
			Casting.removeBasinRecipe(output);
		}
	}

	function basinRemove(map as ILiquidStack[IItemStack]) {
		for output, inputFluid in map {
			Casting.removeBasinRecipe(output, inputFluid);
		}
	}

	function dryingAdd(map as int[IIngredient][IItemStack]) {
		for output, array in map {
			for input, ticks in array {
				Drying.addRecipe(output, input, ticks);
			}
		}
	}

	function dryingRemove(map as IItemStack[]) {
		for output in map {
			Drying.removeRecipe(output);
		}
	}

	function meltAdd(map as IIngredient[][ILiquidStack]) {
		for outputFluid, array in map {
			for inputFluid in array {
				Melting.addRecipe(outputFluid, inputFluid);
			}
		}
	}

	function meltAddEntity(map as IEntityDefinition[][ILiquidStack]) {
		for outputFluid, array in map {
			for entity in array {
				Melting.addEntityMelting(entity, outputFluid);
			}
		}
	}

	function meltRemove(map as ILiquidStack[]) {
		for outputFluid in map {
			Melting.removeRecipe(outputFluid);
		}
	}

	function meltRemove(map as IEntityDefinition[]) {
		for entity in map {
			Melting.removeEntityMelting(entity);
		}
	}

	function fuelAdd(map as int[ILiquidStack[]]) {
		for fuelArray, temp in map {
			for fuel in fuelArray {
				Fuel.registerFuel(fuel, temp);
			}
		}
	}
	
}