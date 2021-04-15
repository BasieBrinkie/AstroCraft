import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidOxygen1.stage: [
		<charcoal_pit:fire_starter:0>,
		<charcoal_pit:item_ash:0>,
		<charcoal_pit:log_pile:0>
	]
};

static disabledItems as IIngredient[] = [
	<charcoal_pit:black_dyed_pot:0>,
	<charcoal_pit:bloomery_hatch:0>,
	<charcoal_pit:blue_dyed_pot:0>,
	<charcoal_pit:broken_pot:0>,
	<charcoal_pit:bronze_reinforced_brick:0>,
	<charcoal_pit:brown_dyed_pot:0>,
	<charcoal_pit:ceramic_pot:0>,
	<charcoal_pit:clay_pot:0>,
	<charcoal_pit:cyan_dyed_pot:0>,
	<charcoal_pit:gray_dyed_pot:0>,
	<charcoal_pit:green_dyed_pot:0>,
	<charcoal_pit:item_coke:0>,
	<charcoal_pit:lime_dyed_pot:0>,
	<charcoal_pit:light_blue_dyed_pot:0>,
	<charcoal_pit:magenta_dyed_pot:0>,
	<charcoal_pit:orange_dyed_pot:0>,
	<charcoal_pit:pink_dyed_pot:0>,
	<charcoal_pit:purple_dyed_pot:0>,
	<charcoal_pit:silver_dyed_pot:0>,
	<charcoal_pit:red_dyed_pot:0>,
	<charcoal_pit:thatch:0>,
	<charcoal_pit:white_dyed_pot:0>,
	<charcoal_pit:yellow_dyed_pot:0>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}