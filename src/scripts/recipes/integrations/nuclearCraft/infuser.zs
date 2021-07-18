import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

/*	
	----------------------------------------------------------------------------------------------
	Add method:
	First [IIngredient] is output item.
	Second [IIngredient] is input item.
    [ILiquidStack] is input fluid.
    First [double] is multiplier time in ticks.
    Second [double] is multiplier power in RF.
    third double is radiation process in rad.
	----------------------------------------------------------------------------------------------
*/
static infuserAdd as double[double][double][ILiquidStack][IIngredient][IIngredient] = {
    <nuclearcraft:radaway_slow>: {
        <techguns:itemshared:146>: {<liquid:radaway_slow>: 
            {500: {25: 0
    }}}},
};

function init() {
    nc.infuserRemoveAll();
    nc.infuserAddRecipe(infuserAdd);
}