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
import scripts.stages.register.stageDecorationEnable;

static stagedItems as IIngredient[][string] = {
	stageResources1.stage: [
		<skyresources:casing:0>,
		<skyresources:combustionheater:1>,
		<skyresources:crucible:0>,
		<skyresources:fusiontable:0>,
		<skyresources:heat:0>,
		<skyresources:heatprovider:1>,
		<skyresources:stonegrinder:*>,
	],
	stageRocketBuilder.stage: [
		<skyresources:condenser:1>,
		<skyresources:orealchdust:17>
	]
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
	<skyresources:alchemy:15>,

	//Casings
	<skyresources:casing:2>,
	<skyresources:casing:6>,
	<skyresources:casing:7>,
	<skyresources:casing:8>,
	<skyresources:casing:9>,
	<skyresources:casing:10>,
	<skyresources:casing:11>,
	<skyresources:casing:14>,

	//Combustion
	<skyresources:combustionheater:0>,
	<skyresources:combustionheater:2>,
	<skyresources:combustionheater:6>,
	<skyresources:combustionheater:7>,
	<skyresources:combustionheater:8>,
	<skyresources:combustionheater:9>,
	<skyresources:combustionheater:10>,
	<skyresources:combustionheater:11>,
	<skyresources:combustionheater:14>,
	
	//Condenser
	<skyresources:condenser:0>,
	<skyresources:condenser:2>,
	<skyresources:condenser:6>,
	<skyresources:condenser:7>,
	<skyresources:condenser:8>,
	<skyresources:condenser:9>,
	<skyresources:condenser:10>,
	<skyresources:condenser:11>,
	<skyresources:condenser:14>,

	//Heat Provider
	<skyresources:heatprovider:0>,
	<skyresources:heatprovider:2>,
	<skyresources:heatprovider:6>,
	<skyresources:heatprovider:7>,
	<skyresources:heatprovider:8>,
	<skyresources:heatprovider:9>,
	<skyresources:heatprovider:10>,
	<skyresources:heatprovider:11>,
	<skyresources:heatprovider:14>,

	//Heat Components
	<skyresources:heat:0>,
	<skyresources:heat:2>,
	<skyresources:heat:6>,
	<skyresources:heat:7>,
	<skyresources:heat:8>,
	<skyresources:heat:9>,
	<skyresources:heat:10>,
	<skyresources:heat:11>,
	<skyresources:heat:14>,

	<skyresources:rockcleaner:0>,
];

function init() {
	stager.setStage(stagedItems);
	stager.disable(disabledItems);
}