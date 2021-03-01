import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicKnowledgeDecorator.stage: [
        <architecturecraft:chisel:0>,
        <architecturecraft:hammer:0>,
        <architecturecraft:sawbench:0>
	]
};

static disabledItems as IIngredient[] = [
	
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}