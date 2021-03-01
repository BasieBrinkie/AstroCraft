import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<excompressum:wooden_crucible:0>,
	],

	stageMiner1.stage: [
		<excompressum:compressed_hammer_diamond:*>,
		<excompressum:compressed_hammer_iron:*>,
		<excompressum:compressed_hammer_stone:*>,
		<excompressum:compressed_hammer_wood:*>,
	],
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
	<excompressum:bait:12>,
	<excompressum:wooden_crucible:1>,
	<excompressum:wooden_crucible:2>,
	<excompressum:wooden_crucible:3>,
	<excompressum:wooden_crucible:4>,
	<excompressum:wooden_crucible:5>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}