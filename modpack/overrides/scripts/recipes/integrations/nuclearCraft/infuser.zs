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
    //Basic Nuclear Management
    <nuclearcraft:radaway_slow>: {
        <techguns:itemshared:146>: {<liquid:radaway_slow> * 500: 
            {1.0: {2.5: 0.0
    }}}},
    <nuclearcraft:radaway>: {
        <techguns:itemshared:146>: {<liquid:radaway> * 500: 
            {1.0: {2.5: 0.0
    }}}},
};

function init() {
    nc.infuserRemoveAll();
    nc.infuserAddRecipe(infuserAdd);
}