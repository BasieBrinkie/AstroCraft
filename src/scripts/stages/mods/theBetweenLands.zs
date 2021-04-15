import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageProfessionsStage1;
import scripts.stages.register.stageProfessionsStage2;
import scripts.stages.register.stageProfessionsStage3;
import scripts.stages.register.stageProfessionsStage4;
import scripts.stages.register.stageProfessionsStage5;

static stagedItems as IIngredient[][string] = {
	stageOxygenExtractor.stage: [
		<thebetweenlands:compost_block:0>,
		<thebetweenlands:fallen_leaves:0>,
		<thebetweenlands:items_misc:2>
	],
};

static disabledItems as IIngredient[] = [
	<mekanism:basicblock:3>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}