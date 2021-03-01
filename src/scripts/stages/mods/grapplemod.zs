import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageResources1.stage: [
		<grapplemod:baseupgradeitem:0>,
		<grapplemod:block_grapple_modifier:0>,
		<grapplemod:doubleupgradeitem:0>,
		<grapplemod:grapplinghook:0>,
		<grapplemod:limitsupgradeitem:0>,
		<grapplemod:magnetupgradeitem:0>,
		<grapplemod:motorupgradeitem:0>,
		<grapplemod:ropeupgradeitem:0>,
		<grapplemod:swingupgradeitem:0>,
		<grapplemod:throwupgradeitem:0>,
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}