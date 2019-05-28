import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageStart;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageRocketBuilder;
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageDecoration;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
	]
};

static disabledItems as IIngredient[] = [
	<buildinggadgets:construction_chunk_dense:0>,
	<buildinggadgets:constructionblock_dense:0>,
	<buildinggadgets:constructionpaste:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}