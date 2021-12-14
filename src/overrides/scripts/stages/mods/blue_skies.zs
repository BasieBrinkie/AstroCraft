import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {

};

static disabledItems as IIngredient[] = [
    <blue_skies:everbright_portal>,
    <blue_skies:everdawn_portal>,
	<blue_skies:multi_portal_item>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}
