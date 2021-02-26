import crafttweaker.liquid.ILiquidStack;

static alloyAdd as ILiquidStack[][ILiquidStack] = {

};

static alloyRemove as ILiquidStack[] = [

];

function init() {
	tConstruct.alloyRemove(alloyRemove);
	tConstruct.alloyAdd(alloyAdd);
}