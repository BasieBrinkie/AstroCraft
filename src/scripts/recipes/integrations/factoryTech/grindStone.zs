import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

static grindstoneAdd as bool[IIngredient][IItemStack] = {
	//Basic Resources
	<factorytech:machinepart:0>: {
		<factorytech:machinepart:10>: true
	},
	
	//Rocket Builder
	<factorytech:machinepart:1>: {
		<factorytech:machinepart:11>: true
	},	
	<factorytech:machinepart:31>: {
		<factorytech:machinepart:50>: true,
		<factorytech:machinepart:51>: true
	},
	<thaumcraft:nugget:4>: {
		<mekanism:clump:6>: true
	},
	<thermalfoundation:material:199>: {
		<thermalfoundation:ore:7>: false
	},
	
	//Asteroids Advanced Resources
	<factorytech:machinepart:71>: {
		<minecraft:iron_ingot:0>: true
	},
	<factorytech:machinepart:2>: {
		<factorytech:machinepart:12>: true
	},
	<factorytech:machinepart:4>: {
		<factorytech:machinepart:14>: false
	},
	<factorytech:machinepart:150>: {
		<minecraft:glass:0>: false
	},
	<libvulpes:productnugget:6> * 6: {
		<ore:ingotSteelTier1>.firstItem: false
	},
};

static grindstoneRemove as IItemStack[] = [
	<factorytech:intermediate:5>,
	<factorytech:intermediate:6>,
	<factorytech:machinepart:0>,
	<factorytech:machinepart:1>,
	<factorytech:machinepart:2>,
	<factorytech:machinepart:3>,
	<factorytech:machinepart:11>,
	<factorytech:machinepart:12>,
	<factorytech:machinepart:13>,
	<factorytech:machinepart:20>,
	<factorytech:machinepart:21>,
	<factorytech:machinepart:22>,
	<factorytech:machinepart:30>,
	<factorytech:machinepart:31>,
	<factorytech:machinepart:32>,
	<factorytech:machinepart:71>,
	<factorytech:machinepart:72>,
	<factorytech:machinepart:150>
];

function init() {
	//facTech.grindstoneRemove(grindstoneRemove);
	facTech.grindstoneRemoveAll();
	facTech.grindstoneAdd(grindstoneAdd);
}