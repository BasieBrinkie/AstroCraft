import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static metalCutterAdd as IIngredient[][IItemStack] = {
	//Rocket Builder
	<matteroverdrive:tritanium_nugget:0> * 6: [<ore:blockTritanium>],
	<mysticalagriculture:crafting:22> * 6: [<libvulpes:productingot:9>],

	//Asteroids Advanced Resources
	<mekanism:nugget:5> * 6: [<exnihilocreatio:item_ore_copper:3>],
};

static metalCutterRemove as IItemStack[] = [
	<factorytech:intermediate:5>,
	<factorytech:intermediate:6>,
	<factorytech:machinepart:20>,
	<factorytech:machinepart:11>,
	<factorytech:machinepart:12>,
	<factorytech:machinepart:13>,
	<factorytech:machinepart:20>,
	<factorytech:machinepart:21>,
	<factorytech:machinepart:22>
];

function init() {
	//facTech.metalCutterRemove(metalCutterRemove);
	facTech.metalCutterRemoveAll();
	facTech.metalCutterAdd(metalCutterAdd);
}