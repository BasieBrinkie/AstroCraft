import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicKnowledgeDecorator.stage: [
		<xtones:base:0>,
	],
};

static disabledItems as IIngredient[] = [
	
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}