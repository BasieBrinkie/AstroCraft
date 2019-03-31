#loader contenttweaker
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.ItemList;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ResourceLocation;

var astroStone = VanillaFactory.createBlock("astroStone", <blockmaterial:rock>);
astroStone.setLightOpacity(0);
astroStone.setLightValue(0);
astroStone.setBlockHardness(5.0);
astroStone.setBlockResistance(5.0);
astroStone.setToolClass("pickaxe");
astroStone.setToolLevel(0);
astroStone.setBlockSoundType(<soundtype:stone>);
astroStone.setSlipperiness(0.0);
astroStone.setDropHandler(function(drops, world, position, state, fortune) {
    drops.add(<exnihilocreatio:item_pebble:0>);
    return;
	}
);

astroStone.register();