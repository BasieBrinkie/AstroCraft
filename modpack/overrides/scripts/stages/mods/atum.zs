import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	itemAtumBeacon.stage: [
		<atum:radiant_beacon:0>
	]
};

static disabledItems as IIngredient[] = [
	<atum:scarab:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}