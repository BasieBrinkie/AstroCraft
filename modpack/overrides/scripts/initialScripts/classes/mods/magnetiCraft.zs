#priority 9500
#modloaded magneticraft
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

zenClass magnetiCraft {
	zenConstructor() {}

	function crushingTableAdd(map as IIngredient[][IItemStack]) {
		for output, array in map {
			for input in array {
				mods.magneticraft.CrushingTable.addRecipe(input, output);
			}
		}
	}

    function crushingTableRemove(map as IItemStack[]) {
        for output in map {
            mods.magneticraft.CrushingTable.removeRecipe(output);
        }
    }

}