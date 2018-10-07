import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageTheBeginning;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<minecraft:cobblestone:0>,
		<minecraft:coal:1>,
		<minecraft:crafting_table:0>,
		<minecraft:log:0>,
		<minecraft:stone_axe:*>,
		<minecraft:wooden_pickaxe:*>,
		<minecraft:stone_shovel:*>,
		<minecraft:furnace:0>,
		<minecraft:wheat_seeds>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}
