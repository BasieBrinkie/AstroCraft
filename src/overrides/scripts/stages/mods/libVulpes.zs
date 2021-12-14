import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageBasicRocketBuilder.stage: [
		<libvulpes:coalgenerator:0>,
		<libvulpes:holoprojector:0>,
		<libvulpes:linker:0>
	],
	advancedRocketryMultiblock.stage: [
		<libvulpes:forgepowerinput:0>,
		<libvulpes:hatch:0>,
		<libvulpes:hatch:1>,
	],
};

static disabledItems as IIngredient[] = [
	<libvulpes:coil0:2>,
	<libvulpes:productdust:0>,
	<libvulpes:productdust:1>,
	<libvulpes:productdust:2>,
	<libvulpes:productdust:3>,
	<libvulpes:productdust:4>,
	<libvulpes:productdust:5>,
	<libvulpes:productdust:6>,
	<libvulpes:productdust:7>,
	<libvulpes:productdust:9>,
	<libvulpes:productdust:10>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}