import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidsResources1.stage: [
		<grapplemod:grapplinghook:0>,
	],
	stageAsteroidsAdvancedResources.stage: [
		<grapplemod:baseupgradeitem:0>,
		<grapplemod:block_grapple_modifier:0>,
		<grapplemod:doubleupgradeitem:0>,
		<grapplemod:limitsupgradeitem:0>,
		<grapplemod:magnetupgradeitem:0>,
		<grapplemod:motorupgradeitem:0>,
		<grapplemod:ropeupgradeitem:0>,
		<grapplemod:swingupgradeitem:0>,
		<grapplemod:throwupgradeitem:0>,
	]
};

static disabledItems as IIngredient[] = [
	<grapplemod:forcefieldupgradeitem:0>,
	<grapplemod:staffupgradeitem:0>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}