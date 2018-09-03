import crafttweaker.item.IItemStack;
import crafttweaker.item.IOredictEntry;

zenClass oredictBuilder {
	zenConstructor {}

	/* 
		Process Arrays of Oredicts
	*/

	function processItems(map as IOredictEntry[][IItemStack]) {
		for item, oredictArray in map {
			for i, oredictName in oredictArray {
				oredictName.add(item);
			}
		}
	}

	//function
}