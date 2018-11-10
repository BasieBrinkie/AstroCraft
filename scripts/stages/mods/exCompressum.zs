import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageDawnOfANewDay;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
};

static disabledItems as IIngredient[] = [
	<excompressum:bait:0>,
	<excompressum:bait:1>,
	<excompressum:bait:2>,
	<excompressum:bait:3>,
	<excompressum:bait:4>,
	<excompressum:bait:5>,
	<excompressum:bait:6>,
	<excompressum:bait:7>,
	<excompressum:bait:8>,
	<excompressum:bait:9>,
	<excompressum:bait:10>,
	<excompressum:bait:11>,
	<excompressum:bait:12>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}