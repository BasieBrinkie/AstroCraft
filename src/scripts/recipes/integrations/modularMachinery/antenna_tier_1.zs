import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;

#Input newBuilder(recipeName, machineName, processingTime, @sortingPriority)

function init() {
    val machineName = "antenna_tier_1";

    RecipeBuilder.newBuilder(machineName ~ "galactic_exploration_data", machineName, 6000)
        .addEnergyPerTickInput(128)
        .addItemOutput(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:galactic_exploration_data"}))
        .build();
}