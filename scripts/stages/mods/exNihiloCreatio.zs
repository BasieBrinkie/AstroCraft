import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageProfessionsStage1;
import scripts.stages.register.stageProfessionsStage2;
import scripts.stages.register.stageProfessionsStage3;
import scripts.stages.register.stageProfessionsStage4;
import scripts.stages.register.stageProfessionsStage5;

import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageRocketBuilder;
import scripts.stages.register.stageOxygenExtractor;
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDisabledItems;

static stagedItems as IIngredient[][string] = {
	stageOxygen1.stage: [
		<exnihilocreatio:block_barrel0:0>,
		<exnihilocreatio:block_sieve:0>,
		<exnihilocreatio:hammer_stone:*>,
		<exnihilocreatio:item_material:2>,
		<exnihilocreatio:item_mesh:1>,
		<exnihilocreatio:item_ore_copper:0>,
		<exnihilocreatio:item_ore_copper:1>,
		<exnihilocreatio:item_ore_iron:0>,
		<exnihilocreatio:item_ore_iron:1>,
		<exnihilocreatio:item_pebble:0>
	],
	stageRocketBuilder.stage: [
		<exnihilocreatio:item_ore_aluminum:0>,
		<exnihilocreatio:item_ore_aluminum:1>,
		<exnihilocreatio:item_ore_lead:0>,
		<exnihilocreatio:item_ore_lead:1>,
		<exnihilocreatio:item_ore_nickel:0>,
		<exnihilocreatio:item_ore_nickel:1>,
	]
};

static disabledItems as IIngredient[] = [
	<exnihilocreatio:block_auto_sifter:0>,
	<exnihilocreatio:block_axle_stone:0>,
	<exnihilocreatio:block_crucible_wood:0>,
	<exnihilocreatio:block_grinder:0>,
	<exnihilocreatio:block_waterwheel:0>,
	<exnihilocreatio:crook_andesite>,
	<exnihilocreatio:crook_blaze:0>,
	<exnihilocreatio:crook_bone:0>,
	<exnihilocreatio:crook_clay:0>,
	<exnihilocreatio:crook_clay_uncooked:0>,
	<exnihilocreatio:crook_diorite:0>,
	<exnihilocreatio:crook_gold:0>,
	<exnihilocreatio:crook_granite:0>,
	<exnihilocreatio:crook_netherrack:0>,
	<exnihilocreatio:crook_prismarine:0>,
	<exnihilocreatio:crook_purpur:0>,
	<exnihilocreatio:hammer_gold:0>,
	<exnihilocreatio:item_material:7>,
	<exnihilocreatio:item_pebble:1>,
	<exnihilocreatio:item_pebble:2>,
	<exnihilocreatio:item_pebble:3>,
	<exnihilocreatio:item_doll:0>,
	<exnihilocreatio:item_doll:2>,
	<exnihilocreatio:item_doll:3>,
	<exnihilocreatio:item_doll:5>,
	<exnihilocreatio:item_doll:6>,
	<exnihilocreatio:item_doll:7>
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}