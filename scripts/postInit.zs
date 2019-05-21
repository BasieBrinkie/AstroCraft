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
function initRecipes() {	
	/*
		------------------------------------------------------
		Removes all the recipes from all mods except set mods.
		------------------------------------------------------
	*/
	if (!devDisableRemoveRecipes | !dev) {
	print("----------------------- Recipes: Removal -----------------------");
	scripts.recipes.remove.init();

	}

	/*	
		----------------
		Recipes per mod.
		----------------
	*/
	if (!devDisableAddRecipes | !dev) {
	print("----------------------- Recipes: Additions -----------------------");
	
	scripts.recipes.vanillaCraftingTables.mods.abyssalCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.actuallyAdditions.init();
	scripts.recipes.vanillaCraftingTables.mods.advancedRocketry.init();
	scripts.recipes.vanillaCraftingTables.mods.charcoalPit.init();
	scripts.recipes.vanillaCraftingTables.mods.chisel.init();

	scripts.recipes.vanillaCraftingTables.mods.exCompressum.init();
	scripts.recipes.vanillaCraftingTables.mods.exNihiloCreatio.init();
	scripts.recipes.vanillaCraftingTables.mods.factoryTech.init();

	scripts.recipes.vanillaCraftingTables.mods.mekanism.init();
	scripts.recipes.vanillaCraftingTables.mods.minecraft.init();
	scripts.recipes.vanillaCraftingTables.mods.nuclearCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.skyResources.init();

	}
}

function initIntegrations() {
	if (!devDisableIntegrations | !dev) {
	print("----------------------- Integrations -----------------------");
	scripts.recipes.integrations.appliedEnergistics2.grinder.init();

	scripts.recipes.integrations.factoryTech.centrifuge.init();

	scripts.recipes.integrations.skyResources.alchemicalFusion.init();
	scripts.recipes.integrations.skyResources.catalysts.init();
	scripts.recipes.integrations.skyResources.combustion.init();
	scripts.recipes.integrations.skyResources.crucible.init();
	scripts.recipes.integrations.skyResources.cuttingKnife.init();
	scripts.recipes.integrations.skyResources.rockGrinder.init();
	
	}
	
}

function initStages() {
	if (!devDisableStages | !dev) {
	print("----------------------- Stages -----------------------");

	scripts.stages.liquids.init();
	scripts.stages.metalCopper.init();

	scripts.stages.mods.abyssalCraft.init();
	scripts.stages.mods.actuallyAdditions.init();	
	scripts.stages.mods.advancedRocketry.init();
	scripts.stages.mods.charcoalPit.init();
	scripts.stages.mods.exCompressum.init();
	scripts.stages.mods.exNihiloCreatio.init();
	scripts.stages.mods.factoryTech.init();
	scripts.stages.mods.libVulpes.init();
	scripts.stages.mods.minecraft.init();
	scripts.stages.mods.skyResources.init();
	scripts.stages.mods.thermalFoundation.init();


	scripts.stages.mobs.chickens.init();

	}
}

function initOredict() {
	print("----------------------- OreDict -----------------------");

	scripts.oredict.metalAluminum.init();
	scripts.oredict.metalCopper.init();
	scripts.oredict.metalIron.init();
	scripts.oredict.metalLead.init();
	scripts.oredict.metalNickel.init();
	scripts.oredict.metalSteel.init();

	scripts.oredict.sticks.init();
	scripts.oredict.stone.init();
	scripts.oredict.woodLog.init();
	scripts.oredict.woodPlanks.init();
	scripts.oredict.woodSlabs.init();

	
	scripts.oredict.mods.betterQuesting.init();
	scripts.oredict.mods.skyResources.init();
}

function initItemProperties() {
	if (!devDisableItemProperties | !dev) {
	print("----------------------- Item Properties -----------------------");
	/*	
		----------------------------
		Item Properties per Oredict/Group/Property.
		----------------------------
	*/
	scripts.items.burnTime.init();

	/*	
		------------------------
		Item Properties per Mod.
		------------------------
	*/
	scripts.items.mods.abyssalCraft.init();
	scripts.items.mods.advancedRocketry.init();
	scripts.items.mods.alchemistry.init();
	scripts.items.mods.exCompressum.init();
	scripts.items.mods.minecraft.init();
	scripts.items.mods.skyResources.init();

	}
}

function initSpawnItems() {
	print("----------------------- Spawn Items -----------------------");
	scripts.initialScripts.initialInventory.initialInventory.init();
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