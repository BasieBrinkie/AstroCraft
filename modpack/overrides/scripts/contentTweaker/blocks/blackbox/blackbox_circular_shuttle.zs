#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Player;

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

var blackBox = VanillaFactory.createExpandBlock("blackbox_circular_shuttle", <blockmaterial:iron>);
blackBox.setLightOpacity(15);
blackBox.setLightValue(0);
blackBox.setBlockHardness(15.0);
blackBox.setBlockResistance(50.0);
blackBox.setToolClass("pickaxe");
blackBox.setToolLevel(4);
blackBox.setBlockSoundType(<soundtype:metal>);
blackBox.setWitherProof(true);
blackBox.creativeTab = astrocraftTab;

blackBox.onBlockActivated = function(world, pos, state, player, hand, facing, blockHit) {
    player.give(<item:opencomputers:material:12>.withTag({blackbox: "circular_shuttle", display: {LocName: "Blackbox Data: Circular Shuttle", Lore: ["This particular platter contains data from the blackbox"]}}));
    return true;
};

blackBox.register();