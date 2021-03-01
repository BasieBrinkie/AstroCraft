import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	planetAsteroids1.stage: [
		<immersiveengineering:material:17>,
	],
};

static disabledItems as IIngredient[] = [
	<immersiveengineering:material:5>,
	<immersiveengineering:material:6>,
	<immersiveengineering:ore:5>,
	<immersiveengineering:stone_decoration:3>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}