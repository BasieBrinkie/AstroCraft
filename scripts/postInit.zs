#priority -1

/*
	-------------------------
	Execute order of scripts.
	-------------------------
*/
initSpawnItems();
initOredict();
initStages();
initItemProperties();
initRecipes();
initDrops();
initSeeds();

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
	scripts.oredict.metalCopper.init();
	scripts.oredict.metalIron.init();

	scripts.oredict.mods.betterQuesting.init();
}

function initStages() {
	scripts.stages.metalCopper.init();

	scripts.stages.mods.abyssalCraft.init();
	scripts.stages.mods.actuallyAdditions.init();	
	scripts.stages.mods.advancedRocketry.init();
	scripts.stages.mods.betterQuesting.init();
	scripts.stages.mods.charcoalPit.init();
	scripts.stages.mods.exNihiloCreatio.init();
	scripts.stages.mods.libVulpes.init();
	scripts.stages.mods.minecraft.init();
	scripts.stages.mods.thermalFoundation.init();


	scripts.stages.mobs.chickens.init();

	stager.addLeftovers();
}

function initItemProperties() {
	if (!devItemProperties) {
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
	scripts.items.mods.evilCraft.init();
	scripts.items.mods.minecraft.init();
	scripts.items.mods.tinyProgressions.init();

	}
}

function initRecipes() {	
	/*
		------------------------------------------------------
		Removes all the recipes from all mods except set mods.
		------------------------------------------------------
	*/
	scripts.recipes.remove.init();

	/*	
		----------------
		Recipes per mod.
		----------------
	*/
	scripts.recipes.vanillaCraftingTables.mods.abyssalCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.actuallyAdditions.init();
	scripts.recipes.vanillaCraftingTables.mods.advancedRocketry.init();
	scripts.recipes.vanillaCraftingTables.mods.betterQuesting.init();
	scripts.recipes.vanillaCraftingTables.mods.charcoalPit.init();

	scripts.recipes.vanillaCraftingTables.mods.evilCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.exNihiloCreatio.init();

	scripts.recipes.vanillaCraftingTables.mods.minecraft.init();
	scripts.recipes.vanillaCraftingTables.mods.nuclearCraft.init();
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