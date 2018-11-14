#priority -1

/*
	-------------------------
	Execute order of scripts.
	-------------------------
*/
initSpawnItems();
initOredict();
initStages();
initIntegrations();
initRecipes();
initBuildStages();

initItemProperties();
initDrops();
initSeeds();

/*
	-------------------------------------------------
	Functions to define where the init functions are.
	-------------------------------------------------
*/
function initSpawnItems() {
	print("----------------------- Spawn Items -----------------------");
	scripts.initialScripts.initialInventory.initialInventory.init();
}

function initOredict() {
	print("----------------------- OreDict -----------------------");

	scripts.oredict.metalCopper.init();
	scripts.oredict.metalIron.init();
	scripts.oredict.planks.init();
	scripts.oredict.sticks.init();

	scripts.oredict.mods.betterQuesting.init();
}

function initStages() {
	if (!devDisableStages | !dev) {
	print("----------------------- Stages -----------------------");

	scripts.stages.metalCopper.init();

	scripts.stages.mods.abyssalCraft.init();
	scripts.stages.mods.actuallyAdditions.init();	
	scripts.stages.mods.advancedRocketry.init();
	scripts.stages.mods.betterQuesting.init();
	scripts.stages.mods.charcoalPit.init();
	scripts.stages.mods.exCompressum.init();
	scripts.stages.mods.exNihiloCreatio.init();
	scripts.stages.mods.libVulpes.init();
	scripts.stages.mods.minecraft.init();
	scripts.stages.mods.thermalFoundation.init();


	scripts.stages.mobs.chickens.init();

	}
}

function initItemProperties() {
	if (!devItemProperties | !dev) {
	print("----------------------- Item Properties -----------------------");
	/*	
		----------------------------
		Item Properties per Oredict/Group/Property.
		----------------------------
	*/
	scripts.items.burnTime.init();

	//scripts.items.metalCopper.init();
	scripts.items.metalIron.init();
	scripts.items.metalLead.init();
	scripts.items.metalSteel.init();
	/*	
		------------------------
		Item Properties per Mod.
		------------------------
	*/
	scripts.items.mods.abyssalCraft.init();
	scripts.items.mods.advancedRocketry.init();
	scripts.items.mods.evilCraft.init();
	scripts.items.mods.minecraft.init();

	}
}

function initIntegrations() {
	if (!devDisableIntegrations | !dev) {
	print("----------------------- Integrations -----------------------");
	
	scripts.integrations.skyResources.alchemicalFusion.init();
	scripts.integrations.skyResources.catalysts.init();
	scripts.integrations.skyResources.combustion.init();
	scripts.integrations.skyResources.cuttingKnife.init();
	scripts.integrations.skyResources.rockGrinder.init();
	
	}
	
}

function initRecipes() {	
	/*
		------------------------------------------------------
		Removes all the recipes from all mods except set mods.
		------------------------------------------------------
	*/
	if (!devRemoveRecipes | !dev) {
	print("----------------------- Recipes: Removal -----------------------");
	scripts.recipes.remove.init();

	}

	/*	
		----------------
		Recipes per mod.
		----------------
	*/
	if (!devAddRecipes | !dev) {
	print("----------------------- Recipes: Additions -----------------------");
	
	scripts.recipes.vanillaCraftingTables.mods.abyssalCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.actuallyAdditions.init();
	scripts.recipes.vanillaCraftingTables.mods.advancedRocketry.init();
	scripts.recipes.vanillaCraftingTables.mods.betterQuesting.init();
	scripts.recipes.vanillaCraftingTables.mods.charcoalPit.init();

	scripts.recipes.vanillaCraftingTables.mods.evilCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.exCompressum.init();
	scripts.recipes.vanillaCraftingTables.mods.exNihiloCreatio.init();

	scripts.recipes.vanillaCraftingTables.mods.mekanism.init();
	scripts.recipes.vanillaCraftingTables.mods.minecraft.init();
	scripts.recipes.vanillaCraftingTables.mods.nuclearCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.skyResources.init();

	}
}

function initDrops() {
	print("----------------------- Block Drops -----------------------");
	scripts.blockDrops.blockDrops.init();

	print("----------------------- Mob Drops -----------------------");

	scripts.mobDrops.minecraft.init();
}


function initSeeds() {
	print("----------------------- Seeds -----------------------");
	scripts.seeds.seeds.init();
}

function initBuildStages() {
	print("----------------------- Build Stages -----------------------");
	stager.build();
}