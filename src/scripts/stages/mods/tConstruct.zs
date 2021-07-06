import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsResources1.stage: [
		<tconstruct:casting:0>,
		<tconstruct:casting:1>,
		<tconstruct:faucet:0>,
		<tconstruct:materials:0>,
		<tconstruct:materials:15>,
		<tconstruct:tooltables:0>,
		<tconstruct:soil:0>,
	],
	stageBasicRocketBuilder.stage: [
		<tconstruct:channel:0>,
	],
	stageMiner1.stage: [
		<tconstruct:throwball:1>,
	]
};

static disabledItems as IIngredient[] = [
	<tconstruct:cast>.withTag({PartType: "tconstruct:shard"}),
	<tconstruct:cast_custom:0>,
	<tconstruct:cast_custom:1>,
	<tconstruct:cast_custom:3>,
	<tconstruct:cast_custom:4>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}