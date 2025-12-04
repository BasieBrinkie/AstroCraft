import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;

#Input newBuilder(recipeName, machineName, processingTime, @sortingPriority)

function init() {
    val machineName = "asteroid_miner_tier_1";

    RecipeBuilder.newBuilder(machineName ~ "_dim_0", machineName, 600)
        .setDimension([0])
        .addEnergyPerTickInput(100)
        .addItemOutput(<contenttweaker:astrostone:0> * 4).setChance(0.796)
        .addItemOutput(<contenttweaker:astrostone_2:0> * 4).setChance(0.627)
        .addItemOutput(<contenttweaker:astrostone_3:0> * 4).setChance(0.3885)
        .addItemOutput(<minecraft:iron_ore:0> * 3).setChance(0.5111)
        .addItemOutput(<thermalfoundation:ore:5> * 2).setChance(0.3692)
        .addItemOutput(<thermalfoundation:ore:4>).setChance(0.15333)
        .addItemOutput(<thermalfoundation:ore:3>).setChance(0.056)
        .addItemOutput(<thermalfoundation:ore:7>).setChance(0.01102)
        .addItemOutput(<minecraft:diamond_ore:0>).setChance(0.00540)
        .build();
}