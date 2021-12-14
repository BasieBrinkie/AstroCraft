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
	stageAsteroidsAdvancedResources.stage: [
		<liquid:copper>,
		<liquid:lava>,
		<liquid:water>,
	],
	stageBasicRocketBuilder.stage: [
		<liquid:iridium>,
		<liquid:lead>,
		<liquid:nickel>,
		<liquid:rocketfuel>,
	],
	stageBasicDecorator.stage: [
		<liquid:glass>
	],
	stageBasicNuclearManagement.stage: [
		<liquid:radaway_slow>
	],
	liquidLava.stage: [
		<liquid:lava>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setLiquidStage(stagedLiquids);
	stager.disable(disabledItems);
}