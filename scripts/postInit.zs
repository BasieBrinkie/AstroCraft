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
	
	scripts.recipes.vanillaCraftingTables.mods.actuallyAdditions.init();
	scripts.recipes.vanillaCraftingTables.mods.advancedRocketry.init();
	scripts.recipes.vanillaCraftingTables.mods.appliedEnergistics2.init();
	scripts.recipes.vanillaCraftingTables.mods.charcoalPit.init();
	scripts.recipes.vanillaCraftingTables.mods.chisel.init();

	scripts.recipes.vanillaCraftingTables.mods.exCompressum.init();
	scripts.recipes.vanillaCraftingTables.mods.exNihiloCreatio.init();
	scripts.recipes.vanillaCraftingTables.mods.factoryTech.init();
	scripts.recipes.vanillaCraftingTables.mods.grapplemod.init();
	scripts.recipes.vanillaCraftingTables.mods.libVulpes.init();

	scripts.recipes.vanillaCraftingTables.mods.matterOverdrive.init();
	scripts.recipes.vanillaCraftingTables.mods.mekanism.init();
	scripts.recipes.vanillaCraftingTables.mods.minecraft.init();
	scripts.recipes.vanillaCraftingTables.mods.pneumaticCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.nuclearCraft.init();
	scripts.recipes.vanillaCraftingTables.mods.researchTable.init();
	scripts.recipes.vanillaCraftingTables.mods.skyResources.init();
	scripts.recipes.vanillaCraftingTables.mods.tConstruct.init();

	}
}

function initIntegrations() {
	if (!devDisableIntegrations | !dev) {
	print("----------------------- Integrations -----------------------");
	scripts.recipes.integrations.actuallyAdditions.atomicReconstructor.init();
	scripts.recipes.integrations.actuallyAdditions.compost.init();
	scripts.recipes.integrations.actuallyAdditions.empowerer.init();

	scripts.recipes.integrations.appliedEnergistics2.grinder.init();

	scripts.recipes.integrations.charcoalPit.bloomery.init();
	scripts.recipes.integrations.charcoalPit.fuels.init();
	scripts.recipes.integrations.charcoalPit.kiln.init();

	scripts.recipes.integrations.chisel.mods.matterOverdrive.init();
	//scripts.recipes.integrations.chisel.wool.init();

	scripts.recipes.integrations.exNihiloCreatio.compost.init();
	scripts.recipes.integrations.exNihiloCreatio.crook.init();
	scripts.recipes.integrations.exNihiloCreatio.hammer.init();
	scripts.recipes.integrations.exNihiloCreatio.heat.init();
	scripts.recipes.integrations.exNihiloCreatio.sieve.init();

	scripts.recipes.integrations.factoryTech.agitator.init();
	scripts.recipes.integrations.factoryTech.centrifuge.init();
	scripts.recipes.integrations.factoryTech.chopSaw.init(); 
	scripts.recipes.integrations.factoryTech.compressionChamber.init();
	scripts.recipes.integrations.factoryTech.drill.init();
	scripts.recipes.integrations.factoryTech.grindStone.init();
	scripts.recipes.integrations.factoryTech.magneticCentrifuge.init();
	scripts.recipes.integrations.factoryTech.metalCutter.init();
	scripts.recipes.integrations.factoryTech.refrigerator.init();
	scripts.recipes.integrations.factoryTech.temperer.init();

	scripts.recipes.integrations.skyResources.alchemicalFusion.init();
	scripts.recipes.integrations.skyResources.catalysts.init();
	scripts.recipes.integrations.skyResources.cauldron.init();
	scripts.recipes.integrations.skyResources.combustion.init();
	scripts.recipes.integrations.skyResources.condenser.init();
	scripts.recipes.integrations.skyResources.crucible.init();
	scripts.recipes.integrations.skyResources.cuttingKnife.init();
	scripts.recipes.integrations.skyResources.rockGrinder.init();
	
	scripts.recipes.integrations.tConstruct.alloy.init();
	scripts.recipes.integrations.tConstruct.basin.init();
	scripts.recipes.integrations.tConstruct.casting.init();
	scripts.recipes.integrations.tConstruct.drying.init();
	scripts.recipes.integrations.tConstruct.fuel.init();
	scripts.recipes.integrations.tConstruct.melting.init();
	}
	
}

function initStages() {
	if (!devDisableStages | !dev) {
	print("----------------------- Stages -----------------------");

	scripts.stages.liquids.init();
	scripts.stages.stagesResearchTable.init();
	
	scripts.stages.metals.metalAluminum.init();
	scripts.stages.metals.metalCopper.init();
	scripts.stages.metals.metalIron.init();
	scripts.stages.metals.metalLead.init();
	scripts.stages.metals.metalNickel.init();
	scripts.stages.metals.metalSteel.init();

	scripts.stages.mods.actuallyAdditions.init();	
	scripts.stages.mods.advancedRocketry.init();
	scripts.stages.mods.appliedEnergistics2.init();
	scripts.stages.mods.buildingGadgets.init();
	scripts.stages.mods.charcoalPit.init();
	scripts.stages.mods.chisel.init();
	scripts.stages.mods.contenttweaker.init();
	scripts.stages.mods.enderUtilities.init();
	scripts.stages.mods.exCompressum.init();
	scripts.stages.mods.exNihiloCreatio.init();
	scripts.stages.mods.extraUtils2.init();
	scripts.stages.mods.factoryTech.init();
	scripts.stages.mods.ftbQuests.init();
	scripts.stages.mods.grapplemod.init();
	scripts.stages.mods.immersiveEngineering.init();
	scripts.stages.mods.libVulpes.init();
	scripts.stages.mods.matterOverdrive.init();
	scripts.stages.mods.mekanism.init();
	scripts.stages.mods.minecraft.init();
	scripts.stages.mods.mysticalAgradditions.init();
	scripts.stages.mods.mysticalAgriculture.init();
	scripts.stages.mods.nuclearCraft.init();
	scripts.stages.mods.pneumaticCraft.init();
	scripts.stages.mods.recurrentComplex.init();
	scripts.stages.mods.researchTable.init();
	scripts.stages.mods.skyResources.init();
	scripts.stages.mods.tConstruct.init();
	scripts.stages.mods.techGuns.init();
	scripts.stages.mods.thaumcraft.init();
	scripts.stages.mods.thermalFoundation.init();

	scripts.stages.mobs.chickens.init();

	}
}

function initOredict() {
	print("----------------------- OreDict -----------------------");

	scripts.oredict.metals.metalAluminum.init();
	scripts.oredict.metals.metalCopper.init();
	scripts.oredict.metals.metalIron.init();
	scripts.oredict.metals.metalLead.init();
	scripts.oredict.metals.metalNickel.init();
	scripts.oredict.metals.metalSteel.init();
	scripts.oredict.metals.metalUranium.init();

	scripts.oredict.coal.init();
	scripts.oredict.food.init();
	scripts.oredict.sand.init();
	scripts.oredict.sticks.init();
	scripts.oredict.stone.init();
	scripts.oredict.woodLog.init();
	scripts.oredict.woodPlanks.init();
	scripts.oredict.woodSlabs.init();
	scripts.oredict.wool.init();
	
	scripts.oredict.mods.betterQuesting.init();
	scripts.oredict.mods.factoryTech.init();
	scripts.oredict.mods.matterOverdrive.init();
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
	scripts.items.mods.advancedRocketry.init();
	scripts.items.mods.alchemistry.init();
	scripts.items.mods.appliedEnergistics2.init();
	scripts.items.mods.exCompressum.init();
	scripts.items.mods.factoryTech.init();
	scripts.items.mods.minecraft.init();
	scripts.items.mods.mysticalAgriculture.init();
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