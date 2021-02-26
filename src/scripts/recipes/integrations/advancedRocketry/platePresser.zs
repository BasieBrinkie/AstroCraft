import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

static platePresserAddOredict as IOreDictEntry[IItemStack] = {
	//Dawn of a new age
	<libvulpes:productplate:4> * 3: 
		<ore:blockCopper>,
	
	//Basic Resources
	<libvulpes:productplate:1> * 3:
		<ore:blockIron>,
	

};

function init() {
	advRock.platePresserRemoveAll();
	advRock.platePresserAddOredict(platePresserAddOredict);
}