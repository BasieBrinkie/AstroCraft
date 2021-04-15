import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static stagedItems as IIngredient[][string] = {
	stageAsteroidOxygen1.stage: [
		<skyresources:alchemyitemcomponent:1>,
	],
	stageAsteroidResources1.stage: [
		<skyresources:casing:0>,
		<skyresources:combustionheater:0>,
		<skyresources:crucible:0>,
		<skyresources:fusiontable:0>,
		<skyresources:heat:0>,
		<skyresources:heatprovider:1>,
		<skyresources:irongrinder:*>,
		<skyresources:stonegrinder:*>,
	],
	stageRocketBuilder.stage: [
		<skyresources:condenser:1>,
		<skyresources:orealchdust:17>
	],
	stageAsteroidAdvancedResources.stage: [
		<skyresources:casing:3>,
		<skyresources:casing:4>,
		<skyresources:combustionheater:3>,
		<skyresources:combustionheater:4>,
		<skyresources:condenser:3>,
		<skyresources:condenser:4>,
		<skyresources:ironcuttingknife:0>,
	],
	stageFarmer1.stage: [
		<skyresources:baseitemcomponent:4>
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

	<skyresources:alchemyitemcomponent:6>,
	//Casings
	<skyresources:casing:1>,
	<skyresources:casing:2>,
	<skyresources:casing:5>,
	<skyresources:casing:6>,
	<skyresources:casing:7>,
	<skyresources:casing:8>,
	<skyresources:casing:9>,
	<skyresources:casing:10>,
	<skyresources:casing:11>,
	<skyresources:casing:14>,

	<skyresources:coalinfusedblock:0>,
	//Combustion
	<skyresources:combustionheater:1>,
	<skyresources:combustionheater:2>,
	<skyresources:combustionheater:5>,
	<skyresources:combustionheater:6>,
	<skyresources:combustionheater:7>,
	<skyresources:combustionheater:8>,
	<skyresources:combustionheater:9>,
	<skyresources:combustionheater:10>,
	<skyresources:combustionheater:11>,
	<skyresources:combustionheater:14>,
	
	<skyresources:compressedcoalblock:0>,
	//Condenser
	<skyresources:condenser:0>,
	<skyresources:condenser:2>,
	<skyresources:condenser:5>,
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
	<skyresources:heatprovider:5>,
	<skyresources:heatprovider:6>,
	<skyresources:heatprovider:7>,
	<skyresources:heatprovider:8>,
	<skyresources:heatprovider:9>,
	<skyresources:heatprovider:10>,
	<skyresources:heatprovider:11>,
	<skyresources:heatprovider:14>,

	//Heat Components
	<skyresources:heat:1>,
	<skyresources:heat:2>,
	<skyresources:heat:5>,
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