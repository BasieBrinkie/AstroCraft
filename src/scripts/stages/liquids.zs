import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedLiquids as ILiquidStack[][string] = {
	stageAsteroidsOxygen1.stage: [
		<liquid:oxygen>
	],
	stageAsteroidsResources1.stage: [
		<liquid:iron>,
		<liquid:preheated_water>
	],
	stageRocketBuilder.stage: [
		<liquid:iridium>,
		<liquid:lead>,
		<liquid:nickel>,
		<liquid:rocketfuel>,
	],
	stageAsteroidsAdvancedResources.stage: [
		<liquid:copper>,
		<liquid:lava>,
		<liquid:water>,
	],
	stageDecorator.stage: [
		<liquid:glass>
	],
	stageProfessionsStage1.stage: [
	],

	liquidLava.stage: [
		<liquid:lava>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setLiquidStage(stagedLiquids);
	stager.disable(disabledItems);
}