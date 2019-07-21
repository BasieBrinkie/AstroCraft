import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static agitatorAdd as IIngredient[ILiquidStack][ILiquidStack][ILiquidStack][IItemStack] = {
	//Rocket Builder
	<factorytech:circuit_intermediate:8>: {null: {
		<liquid:iridium> * 100: {<liquid:nickel> * 250: <ore:dustLead>
	}}},

	//Professions Stage 1
	<exnihilocreatio:item_pebble:0> * 4: {<liquid:lava> * 720: {
		null: {null: <minecraft:magma:0>
	}}},
	<nuclearcraft:radaway_slow:0>: {null : { 
		null: {<liquid:preheated_water> * 1000: <minecraft:redstone:0>
	}}},

	//Farmer One
	null: {<liquid:canolaoil> * 100: {
		null: {<liquid:preheated_water> * 100: <actuallyadditions:item_misc:13>
	}}},
};

static agitatorRemove as IItemStack[] = [
	<minecraft:blaze_powder:0>,
	<minecraft:clay_ball:0>,
	<minecraft:concrete:0>,
	<minecraft:concrete:1>,
	<minecraft:concrete:2>,
	<minecraft:concrete:3>,
	<minecraft:concrete:4>,
	<minecraft:concrete:5>,
	<minecraft:concrete:6>,
	<minecraft:concrete:7>,
	<minecraft:concrete:8>,
	<minecraft:concrete:9>,
	<minecraft:concrete:10>,
	<minecraft:concrete:11>,
	<minecraft:concrete:12>,
	<minecraft:concrete:13>,
	<minecraft:concrete:14>,
	<minecraft:concrete:15>,
	<minecraft:leather:0>,
	<minecraft:slime_ball:0>,
	<minecraft:stone:0>
];

static agitatorRemoveLiquid as ILiquidStack[] = [
	<liquid:h2so4>,
	<liquid:energite>
];

function init() {
	facTech.agitatorRemove(agitatorRemove);
	facTech.agitatorRemove(agitatorRemoveLiquid);
	facTech.agitatorAdd(agitatorAdd);
}