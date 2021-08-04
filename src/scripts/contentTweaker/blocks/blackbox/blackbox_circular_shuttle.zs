#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

var blackBox = VanillaFactory.createBlock("blackbox_circular_shuttle", <blockmaterial:iron>);
blackBox.setLightOpacity(15);
blackBox.setLightValue(0);
blackBox.setBlockHardness(15.0);
blackBox.setBlockResistance(50.0);
blackBox.setToolClass("pickaxe");
blackBox.setToolLevel(4);
blackBox.setBlockSoundType(<soundtype:metal>);
blackBox.setWitherProof(true);
blackBox.creativeTab = astrocraftTab;

blackBox.register();