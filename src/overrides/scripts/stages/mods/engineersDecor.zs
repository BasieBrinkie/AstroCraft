import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static disabledItems as IIngredient[] = [
    <engineersdecor:small_solar_panel:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}