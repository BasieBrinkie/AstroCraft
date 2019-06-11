import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageRocketBuilder;
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageDecorationEnable;
import scripts.stages.register.stageRecurrentComplex;

static stagedItems as IIngredient[][string] = {
	stageRecurrentComplex.stage: [
		<reccomplex:artifact_generation_tag:0>,
		<reccomplex:block_selector_floating:0>,
		<reccomplex:block_selector:0>,
		<reccomplex:book_generation_tag:0>,
		<reccomplex:generic_space:0>,
		<reccomplex:generic_space:1>,
		<reccomplex:generic_space:2>,
		<reccomplex:generic_space:3>,
		<reccomplex:generic_space:4>,
		<reccomplex:generic_space:5>,
		<reccomplex:generic_space:6>,
		<reccomplex:generic_space:7>,
		<reccomplex:generic_space:8>,
		<reccomplex:generic_space:9>,
		<reccomplex:generic_space:10>,
		<reccomplex:generic_space:11>,
		<reccomplex:generic_space:12>,
		<reccomplex:generic_space:13>,
		<reccomplex:generic_space:14>,
		<reccomplex:generic_space:15>,
		<reccomplex:generic_solid:0>,
		<reccomplex:generic_solid:1>,
		<reccomplex:generic_solid:2>,
		<reccomplex:generic_solid:3>,
		<reccomplex:generic_solid:4>,
		<reccomplex:generic_solid:5>,
		<reccomplex:generic_solid:6>,
		<reccomplex:generic_solid:7>,
		<reccomplex:generic_solid:8>,
		<reccomplex:generic_solid:9>,
		<reccomplex:generic_solid:10>,
		<reccomplex:generic_solid:11>,
		<reccomplex:generic_solid:12>,
		<reccomplex:generic_solid:13>,
		<reccomplex:generic_solid:14>,
		<reccomplex:generic_solid:15>,
		<reccomplex:inspector:0>,
		<reccomplex:inventory_generation_tag:0>,
		<reccomplex:inventory_generation_single_tag:0>,
		<reccomplex:inventory_generation_component_tag:0>,
		<reccomplex:maze_generator:0>,
		<reccomplex:spawn_script:0>,
		<reccomplex:structure_generator:0>,
		<reccomplex:weighted_command_block:0>
	]
};

static disabledItems as IIngredient[] = [
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}