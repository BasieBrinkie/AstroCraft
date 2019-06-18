import crafttweaker.item.IItemStack;

static cauldronAdd as float[IItemStack][IItemStack] = {
	
};

static cauldronRemove as IItemStack[] = [
	<actuallyadditions:item_misc:5>,
	<appliedenergistics2:material:0>,
	<astralsorcery:itemcraftingcomponent:0>,
	<draconicevolution:draconium_dust:0>,
	<exnihilocreatio:item_ore_aluminum:2>,
	<exnihilocreatio:item_ore_ardite:2>,
	<exnihilocreatio:item_ore_cobalt:2>,
	<factorytech:ore_dust:9>,
	<iceandfire:sapphire_gem:0>,
	<libvulpes:productdust:7>,
	<mekanism:dirtydust:0>,
	<mekanism:dirtydust:3>,
	<mekanism:dirtydust:6>,
	<mekanism:dust:2>,
	<minecraft:diamond:0>,
	<minecraft:dye:4>,
	<minecraft:emerald:0>,
	<minecraft:quartz:0>,
	<nuclearcraft:dust:3>,
	<nuclearcraft:dust:4>,
	<nuclearcraft:dust:5>,
	<nuclearcraft:dust:6>,
	<nuclearcraft:dust:7>,
	<thaumcraft:amber:0>,
	<thermalfoundation:material:1>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>,
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:72>,
];

function init() {
	skyRes.cauldronRemoveRecipe(cauldronRemove);
	skyRes.cauldronAddRecipe(cauldronAdd);
}