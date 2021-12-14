import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
};

static disabledItems as IIngredient[] = [
	<ftbquests:barrier:0>,
	<ftbquests:book:0>,
	<ftbquests:chest:0>,
	<ftbquests:custom_icon>.withTag({icon: "ftblib:textures/icons/support.png"}),
	<ftbquests:detector:0>,
	<ftbquests:detector:1>,
	<ftbquests:loot_crate_storage:0>,
	<ftbquests:loot_crate_opener:0>,
	<ftbquests:progress_detector:0>,
	<ftbquests:progress_screen:0>,
	<ftbquests:reward_collector:0>,
	<ftbquests:screen:0>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}