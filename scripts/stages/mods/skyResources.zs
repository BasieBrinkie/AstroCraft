import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageDawnOfANewDay;
import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
};

static disabledItems as IIngredient[] = [
	<skyresources:alchemy:0>,
	<skyresources:alchemy:1>,
	<skyresources:alchemy:2>,
	<skyresources:alchemy:3>,
	<skyresources:alchemy:4>,
	<skyresources:alchemy:5>,
	<skyresources:alchemy:6>, 
	<skyresources:alchemy:7>,
	<skyresources:alchemy:8>, 
	<skyresources:alchemy:9>, 
	<skyresources:alchemy:10>, 
	<skyresources:alchemy:11>,
	<skyresources:alchemy:12>,
	<skyresources:alchemy:13>,
	<skyresources:alchemy:14>,
	<skyresources:alchemy:15>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}