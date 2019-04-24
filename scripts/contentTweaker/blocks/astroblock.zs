#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.ItemList;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ResourceLocation;

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

var astroStone = VanillaFactory.createBlock("astrostone", <blockmaterial:rock>);
astroStone.setLightOpacity(0);
astroStone.setLightValue(0);
astroStone.setBlockHardness(0.5);
astroStone.setBlockResistance(0.4);
astroStone.setToolClass("none");
astroStone.setToolLevel(0);
astroStone.setBlockSoundType(<soundtype:stone>);
astroStone.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:exnihilocreatio:item_pebble:0>);
    drops.add(<item:exnihilocreatio:item_pebble:0> % 50);
    drops.add(<item:exnihilocreatio:item_pebble:0> % 50);

    return;
	}
);

astroStone.register();