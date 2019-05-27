import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static meltAdd as IIngredient[][ILiquidStack] = {
		
};

static meltAddEntity as IEntityDefinition[][ILiquidStack] = {
			
};

static meltRemove as ILiquidStack[] = [

];

function init() {
	tConstruct.meltAdd(meltAdd);
	tConstruct.meltAddEntity(meltAddEntity);
	tConstruct.meltRemove(meltRemove);
}