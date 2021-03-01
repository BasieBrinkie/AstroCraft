import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicKnowledgeDecorator.stage: [
		<littletiles:colortube:0>,
		<littletiles:container:0>,
		<littletiles:chisel:0>,
		<littletiles:grabber:0>,
		<littletiles:hammer>,
		<littletiles:ltcoloredblock:0>,
		<littletiles:ltstorageblocktile:0>,
		<littletiles:premade>,
		<littletiles:recipe:0>,
		<littletiles:recipeadvanced:0>,
		<littletiles:saw:0>,
		<littletiles:wrench:0>,
	],

	stageDecoration1Enable.stage: [
		<littletiles:ltcoloredblock:1>,
		<littletiles:ltcoloredblock:2>,		
		<littletiles:ltcoloredblock:3>,
		<littletiles:ltcoloredblock:4>,
		<littletiles:ltcoloredblock:5>,
		<littletiles:ltcoloredblock:6>,
		<littletiles:ltcoloredblock:7>,
		<littletiles:ltcoloredblock:8>,
		<littletiles:ltcoloredblock:9>,
		<littletiles:ltcoloredblock:10>,
		<littletiles:ltcoloredblock:11>,
		<littletiles:ltcoloredblock:13>,
		<littletiles:ltcoloredblock:12>,
		<littletiles:ltcoloredblock:14>,

		<littletiles:ltcoloredblock2:0>,
		<littletiles:ltcoloredblock2:1>,
		<littletiles:ltcoloredblock2:2>,
		<littletiles:ltcoloredblock2:3>,
		<littletiles:ltcoloredblock2:4>,

		<littletiles:lttransparentcoloredblock:0>,
		<littletiles:lttransparentcoloredblock:1>,
		<littletiles:lttransparentcoloredblock:2>,
		<littletiles:lttransparentcoloredblock:3>,
		<littletiles:lttransparentcoloredblock:4>,
		<littletiles:lttransparentcoloredblock:5>,
		<littletiles:lttransparentcoloredblock:6>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}