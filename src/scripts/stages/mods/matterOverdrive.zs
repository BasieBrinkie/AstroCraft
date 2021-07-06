import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicRocketBuilder.stage: [
		<matteroverdrive:decorative.tritanium_plate_colored:*>,
		<matteroverdrive:tritanium_block>,
	]
};

static disabledItems as IIngredient[] = [
	<matteroverdrive:solar_panel:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}