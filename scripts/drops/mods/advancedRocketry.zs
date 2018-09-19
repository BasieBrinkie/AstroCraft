#priority 1000
import crafttweaker.item.IItemStack;

static weightedDrops as float[IItemStack][string] = {
	"advancedrocketry:charcoallog:0": 
	{
		<advancedrocketry:charcoallog:0>: 1.0,
		<actuallyadditions:item_misc:11>: 0.02,
		<tp:tiny_charcoal:0>: 0.1
	}
};

function init(){
	blockDrop.weighted(weightedDrops);
}