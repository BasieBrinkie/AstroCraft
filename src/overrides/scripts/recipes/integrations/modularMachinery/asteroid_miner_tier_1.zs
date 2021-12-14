import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;

#Input newBuilder(recipeName, machineName, processingTime, @sortingPriority)

function init() {
    val machineName = "asteroid_miner_tier_1";

    RecipeBuilder.newBuilder(machineName ~ "_dim_0", machineName, 600)
        .setDimension([0])
        .addEnergyPerTickInput(100)
        .addItemOutput(<contenttweaker:astrostone:0> * 4).setChance(0.4)
        .addItemOutput(<contenttweaker:astrostone_2:0> * 4).setChance(0.4)
        .addItemOutput(<contenttweaker:astrostone_3:0> * 4).setChance(0.4)
        .addItemOutput(<minecraft:iron_ore:0> * 3).setChance(0.5)
        .addItemOutput(<thermalfoundation:ore:5> * 2).setChance(0.3)
        .addItemOutput(<thermalfoundation:ore:4>).setChance(0.15)
        .addItemOutput(<thermalfoundation:ore:3>).setChance(0.05)
        .addItemOutput(<thermalfoundation:ore:7>).setChance(0.01)
        .addItemOutput(<minecraft:diamond_ore:0>).setChance(0.005)
        .build();
}