#priority 9000
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDropFunction;

zenClass mobDrop {
	zenConstructor() {}
	
/*
	-------------------------
	Function to set mobDrops.
	-------------------------
*/
	function drop(map as bool[int][int][WeightedItemStack[]][IEntityDefinition]) {
		for entityName, dropArray in map {
			entityName.clearDrops();
			for itemDrop, RangeArray in dropArray {
				for item in itemDrop {
					for min, maxRangeArray in RangeArray {
						for max, playerOnly in maxRangeArray {
							if (playerOnly) {
								entityName.addPlayerOnlyDrop(item, min, max);
							}
							else {
								entityName.addDrop(item, min, max);
							}
						}
					}
				}
			}
		}
	}

	function clearDrops(map as IEntityDefinition[]) {
		for entityName in map {
			entityName.clearDrops();
		}
	}
}