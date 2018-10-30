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
	scripts.initialScripts.initialInventory.initialInventory.init();
}

function initOredict() {
	scripts.oredict.metalCopper.init();
	scripts.oredict.metalIron.init();
	scripts.oredict.planks.init();
	scripts.oredict.sticks.init();

	scripts.oredict.mods.betterQuesting.init();
}

function initStages() {
	if (!devAddStages | !dev) {

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
	/*	
		----------------------------
		Item Properties per Oredict.
		----------------------------
	*/
	scripts.items.metalCopper.init();
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
	scripts.recipes.remove.init();}

	/*	
		----------------
		Recipes per mod.
		----------------
	*/
	if (!devAddRecipes | !dev) {
	
	scripts.recipes.vanillaCraftingTables.mods.abyssalCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.actuallyAdditions.init();
	scripts.recipes.vanillaCraftingTables.mods.advancedRocketry.init();
	scripts.recipes.vanillaCraftingTables.mods.betterQuesting.init();
	scripts.recipes.vanillaCraftingTables.mods.charcoalPit.init();

	scripts.recipes.vanillaCraftingTables.mods.evilCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.exNihiloCreatio.init();

	scripts.recipes.vanillaCraftingTables.mods.minecraft.init();
	scripts.recipes.vanillaCraftingTables.mods.nuclearCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.skyResources.init();

	}
}

function initDrops() {
	scripts.blockDrops.blockDrops.init();

	scripts.mobDrops.minecraft.init();
}


function initSeeds() {
	scripts.seeds.seeds.init();
}

function initBuildStages() {
	stager.build();
}