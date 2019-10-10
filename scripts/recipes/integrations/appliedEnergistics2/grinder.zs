import crafttweaker.item.IItemStack;

static grinderAdd as int[IItemStack][IItemStack] = {
	//Basic Resources
	<mekanism:dirtydust:0>: {
		<minecraft:iron_ingot:0>: 6
	},

	//Rocket Builder
	<exnihilocreatio:item_ore_lead:0>: {
		<exnihilocreatio:item_ore_lead:1>: 8
	},
	<factorytech:ore_dust:9>: {
		<exnihilocreatio:item_ore_nickel:0>: 5
	},
	<mekanism:dirtydust:6>: {
		<thaumcraft:nugget:4>: 3
	},

	//Professions Stage 1
	<immersiveengineering:material:17>: {
		<thermalfoundation:material:802>: 10
	},

	//Farmer One
	<nuclearcraft:flour:0>: {
		<minecraft:wheat:0>: 2
	},
};

static grinderRemove as IItemStack[] = [
	<alchemistry:ingot:28>,
	<alchemistry:ingot:29>,
	<alchemistry:ingot:30>,
	<alchemistry:ingot:47>,
	<alchemistry:ingot:50>,
	<alchemistry:ingot:76>,
	<alchemistry:ingot:78>,
	<alchemistry:ingot:82>,
	<appliedenergistics2:charged_quartz_ore:0>,
	<appliedenergistics2:material:0>,
	<appliedenergistics2:material:7>,
	<appliedenergistics2:quartz_ore:0>,
	<appliedenergistics2:sky_stone_block:0>,
	<atum:coal_ore:0>,
	<atum:gold_ore:0>,
	<atum:iron_ore:0>,
	<better_diving:silver_ore:0>,
	<better_diving:copper_ore:0>,
	<better_diving:lead:0>,
	<buildinggadgets:construction_chunk_dense:0>,
	<buildinggadgets:constructionblock_dense:0>,
	<erebus:ore_coal:0>,
	<erebus:ore_gold:0>,
	<erebus:ore_iron:0>,
	<exnihilocreatio:item_ore_aluminium:1>,
	<exnihilocreatio:item_ore_aluminium:3>,
	<exnihilocreatio:item_ore_copper:1>,
	<exnihilocreatio:item_ore_copper:3>,
	<exnihilocreatio:item_ore_gold:1>,
	<exnihilocreatio:item_ore_iron:1>,
	<exnihilocreatio:item_ore_lead:1>,
	<exnihilocreatio:item_ore_lead:3>,
	<exnihilocreatio:item_ore_nickel:0>,
	<exnihilocreatio:item_ore_nickel:1>,
	<exnihilocreatio:item_ore_nickel:3>,
	<exnihilocreatio:item_ore_osmium:0>,
	<exnihilocreatio:item_ore_osmium:1>,
	<exnihilocreatio:item_ore_osmium:3>,
	<exnihilocreatio:item_ore_platinum:1>,
	<exnihilocreatio:item_ore_silver:0>,
	<exnihilocreatio:item_ore_silver:1>,
	<exnihilocreatio:item_ore_silver:3>,
	<exnihilocreatio:item_ore_tin:1>,
	<exnihilocreatio:item_ore_tin:3>,
	<factorytech:ingot:0>,
	<factorytech:ingot:1>,
	<factorytech:ingot:3>,
	<factorytech:ore:0>,
	<factorytech:ore:1>,
	<icbmclassic:ingot:1>,
	<immersiveengineering:metal:0>,
	<immersiveengineering:metal:2>,
	<immersiveengineering:metal:3>,
	<immersiveengineering:metal:4>,
	<immersiveengineering:metal:7>,
	<immersiveengineering:ore:0>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,
	<libvulpes:ore0:4>,
	<libvulpes:ore0:5>,
	<libvulpes:productingot:4>,
	<libvulpes:productingot:5>,
	<mekanism:crystal:0>,
	<mekanism:crystal:1>,
	<mekanism:crystal:2>,
	<mekanism:crystal:3>,
	<mekanism:crystal:4>,
	<mekanism:crystal:5>,
	<mekanism:crystal:6>,
	<mekanism:ingot:1>,
	<mekanism:ingot:2>,
	<mekanism:ingot:5>,
	<mekanism:ingot:6>,
	<mekanism:oreblock:0>,
	<mekanism:oreblock:1>,
	<mekanism:oreblock:2>,
	<minecraft:bone:0>,
	<minecraft:coal_ore:0>,
	<minecraft:coal:0>,
	<minecraft:coal:1>,
	<minecraft:ender_pearl:0>,
	<minecraft:gold_ingot:0>,
	<minecraft:gold_ore:0>,
	<minecraft:gravel:0>,
	<minecraft:iron_ingot:0>,
	<minecraft:iron_ore:0>,
	<minecraft:obsidian:0>,
	<minecraft:quartz:0>,
	<minecraft:quartz_ore:0>,
	<minecraft:wheat:0>,
	<nuclearcraft:alloy:0>,
	<nuclearcraft:ingot:0>,
	<nuclearcraft:ingot:1>,
	<nuclearcraft:ingot:2>,
	<nuclearcraft:ingot:13>,
	<nuclearcraft:ore:0>,
	<nuclearcraft:ore:1>,
	<nuclearcraft:ore:2>,
	<techguns:basicore:0>,
	<techguns:basicore:1>,
	<techguns:basicore:2>,
	<techguns:itemshared:79>,
	<techguns:itemshared:80>,
	<techguns:itemshared:81>,
	<techguns:itemshared:82>,
	<thaumcraft:ingot:2>,
	<thermalfoundation:material:128>,
	<thermalfoundation:material:129>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:131>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:134>,
	<thermalfoundation:material:161>,
	<thermalfoundation:material:162>,
	<thermalfoundation:material:163>,
	<thermalfoundation:material:895>,
	<thermalfoundation:ore:0>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:ore:2>,
	<thermalfoundation:ore:3>,
	<thermalfoundation:ore:5>,
	<thermalfoundation:ore:6>,
	
];

function init() {
	ae2.grinderRemove(grinderRemove);
	ae2.grinderAdd(grinderAdd);
}