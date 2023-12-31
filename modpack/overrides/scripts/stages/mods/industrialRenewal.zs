import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	itemMedkit.stage: [
		<industrialrenewal:medkit>
	],
};

static disabledItems as IIngredient[] = [

];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}