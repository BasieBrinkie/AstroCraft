import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static drillAdd as bool[IIngredient][IItemStack] = {
	//Professions Stage 1
	<enderutilities:floor:0> * 2: {
		<ore:slabWood>: true
	},
	<factorytech:salvagepart:161>: {
		<ore:ingotIron>: false
	},
	<minecraft:coal:0>: {
		<minecraft:flint:0>: true
	}
	
};

static drillRemove as IItemStack[] = [
	<actuallyadditions:item_dust:3>,
	<actuallyadditions:item_dust:4>,
	<actuallyadditions:item_dust:7>,
	<advancedrocketry:productdust:0>,
	<advancedrocketry:productdust:1>,
	<appliedenergistics2:material:2>,
	<astralsorcery:itemcraftingcomponent:2>,
	<draconicevolution:draconium_dust:0>,
	<exnihilocreatio:item_ore_aluminum:2>,
	<exnihilocreatio:item_ore_ardite:2>,
	<exnihilocreatio:item_ore_cobalt:2>,
	<exnihilocreatio:item_ore_yellorium:2>,
	<immersiveengineering:material:18>,
	<factorytech:intermediate:0>,
	<factorytech:mined_ore:2>,
	<factorytech:mined_ore:3>,
	<factorytech:ore_dust:0>,
	<factorytech:ore_dust:1>,
	<factorytech:ore_dust:2>,
	<factorytech:ore_dust:3>,
	<factorytech:ore_dust:9>,
	<factorytech:ore_dust:12>,
	<libvulpes:productdust:0>,
	<libvulpes:productdust:3>,
	<libvulpes:productdust:7>,
	<matteroverdrive:tritanium_dust:0>,
	<mekanism:dirtydust:0>,
	<mekanism:dirtydust:2>,
	<mekanism:dirtydust:3>,
	<mekanism:dirtydust:6>,
	<mekanism:dust:2>,
	<mekanism:dust:11>,
	<mekanism:otherdust:5>,
	<minecraft:diamond:0>,
	<minecraft:dye:4>,
	<minecraft:gravel:0>,
	<minecraft:redstone:0>,
	<minecraft:sand:0>,
	<nuclearcraft:dust:3>,
	<nuclearcraft:dust:4>,
	<nuclearcraft:dust:5>,
	<nuclearcraft:dust:6>,
	<nuclearcraft:dust:7>,
	<nuclearcraft:dust:8>,
	<nuclearcraft:dust:9>,
	<nuclearcraft:dust:10>,
	<nuclearcraft:gem_dust:0>,
	<nuclearcraft:gem_dust:2>,
	<thermalfoundation:material:1>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>,
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:72>,
	<thermalfoundation:material:97>,
	<thermalfoundation:material:98>,
	<thermalfoundation:material:99>,
	<thermalfoundation:material:100>,
	<thermalfoundation:material:101>,
	<thermalfoundation:material:102>,
	<thermalfoundation:material:103>,
	<thermalfoundation:material:768>,
	<thermalfoundation:material:771>,
];

function init() {
	//facTech.drillRemove(drillRemove);
	facTech.drillRemoveAll();
	facTech.drillAdd(drillAdd);
}