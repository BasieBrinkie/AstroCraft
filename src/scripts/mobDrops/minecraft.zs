#priority 1000
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

/* 	
	-----------------------------------------------------------------------------------
	You can change the drops of a mob. 
	You first define which entity.
	Then define what it has to drop. IMPORTANT this is defined as a weighted itemstack.
	weighted itemstack = <IItemStack> % dropchance

	the first [int] defines the minimum drop of your weighteditemstack
	the second [int] defines the maximum drop of your weighteditemstack
	The bool sets whether it has to be a playerkill yes or no. If true player required.
	-----------------------------------------------------------------------------------
*/
static drops as bool[int][int][WeightedItemStack[]][IEntityDefinition] = {
	<entity:minecraft:sheep>: { [
		<advancedrocketry:charcoallog> % 20,
		<minecraft:dirt> % 100]: 
			{1:{5: true}}}
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	mobDrop.drop(drops);
}
