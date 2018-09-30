#priority -1

/*
	-------------------------
	Execute order of scripts.
	-------------------------
*/
initSpawnItems();
initOredict();
initStages();
initRecipes();
initDrops();
initItemProperties();
initBuildStages();

/*
	-------------------------------------------------
	Functions to define where the init functions are.
	-------------------------------------------------
*/
function initSpawnItems() {
	scripts.initialScripts.initialInventory.initialInventory.init();
}

function initOredict() {
	scripts.oredict.mods.betterQuesting.init();
}

function initRecipes() {	
	/*
		------------------------------------------------------
		Removes all the recipes from all mods except set mods.
		------------------------------------------------------
	*/
	//scripts.recipes.remove.init();

	/*	
		----------------
		Recipes per mod.
		----------------
	*/
	scripts.recipes.vanillaCraftingTables.mods.actuallyAdditions.init();
	scripts.recipes.vanillaCraftingTables.mods.advancedRocketry.init();
	scripts.recipes.vanillaCraftingTables.mods.betterQuesting.init();
	scripts.recipes.vanillaCraftingTables.mods.charcoalPit.init();

	scripts.recipes.vanillaCraftingTables.mods.evilCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.exNihiloCreatio.init();

	scripts.recipes.vanillaCraftingTables.mods.minecraft.init();
}

function initStages() {
	scripts.stages.mods.abyssalCraft.init();	
	scripts.stages.mods.advancedRocketry.init();
	scripts.stages.mods.betterQuesting.init();
	scripts.stages.mods.charcoalPit.init();
	scripts.stages.mods.exNihiloCreatio.init();
	scripts.stages.mods.minecraft.init();

	scripts.stages.mobs.chickens.init();

	stager.addLeftovers();
}

function initDrops() {
	scripts.blockDrops.blockDrops.init();
}

function initItemProperties() {
	scripts.items.evilCraft.init();
	scripts.items.minecraft.init();
	scripts.items.tinyProgressions.init();
}

function initBuildStages() {
	stager.build();
}

