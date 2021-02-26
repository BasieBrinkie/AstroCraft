import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedLiquids as ILiquidStack[][string] = {
	stageOxygen1.stage: [
		<liquid:oxygen>
	],
	stageResources1.stage: [
		<liquid:iron>,
		<liquid:preheated_water>
	],
	stageRocketBuilder.stage: [
		<liquid:iridium>,
		<liquid:lead>,
		<liquid:nickel>
	],
	stageProfessionsStage1.stage: [
		<liquid:copper>,
		<liquid:lava>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setLiquidStage(stagedLiquids);
	stager.disable(disabledItems);
}