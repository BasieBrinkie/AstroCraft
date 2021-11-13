import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the factorytech centrifuge using the factorytech wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] is output item.
	IItemStack[] is input items.
	----------------------------------------------------------------------------------------------
*/	

static addRecipe as IItemStack[][IItemStack] = {
    <minecraft:cobblestone:0>: [
        <glacidus:frozen_antinatric_stone:0>
    ]
};

static addOredictRecipe as IOreDictEntry[][IItemStack] = {
};

static addHamer as ItemStack[] = [
	<exnihilocreatio:hammer_wood>,
	<exnihilocreatio:hammer_stone>, 
	<exnihilocreatio:hammer_iron>, 
	<exnihilocreatio:hammer_diamond>, 
];

static removeRecipe as IItemStack[] = [
];


function init() {
	mg.crushingTableAddHamer(addHamer)
    mg.crushingTableAdd(addRecipe);
    mg.crushingTableAddOredict(addOredictRecipe);
    mg.crushingTableRemove(removeRecipe);
}