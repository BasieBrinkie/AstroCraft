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

var astroStone2 = VanillaFactory.createBlock("astrostone2", <blockmaterial:rock>);
astroStone2.setLightOpacity(0);
astroStone2.setLightValue(0);
astroStone2.setBlockHardness(0.5);
astroStone2.setBlockResistance(0.4);
astroStone2.setToolClass("none");
astroStone2.setToolLevel(0);
astroStone2.setBlockSoundType(<soundtype:stone>);
astroStone2.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:exnihilocreatio:item_pebble:0>);
    drops.add(<item:exnihilocreatio:item_pebble:0> % 50);
    drops.add(<item:exnihilocreatio:item_pebble:0> % 50);

    return;
	}
);

var astroStone3 = VanillaFactory.createBlock("astrostone3", <blockmaterial:rock>);
astroStone3.setLightOpacity(0);
astroStone3.setLightValue(0);
astroStone3.setBlockHardness(0.5);
astroStone3.setBlockResistance(0.4);
astroStone3.setToolClass("none");
astroStone3.setToolLevel(0);
astroStone3.setBlockSoundType(<soundtype:stone>);
astroStone3.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:exnihilocreatio:item_pebble:0>);
    drops.add(<item:exnihilocreatio:item_pebble:0> % 50);
    drops.add(<item:exnihilocreatio:item_pebble:0> % 50);

    return;
	}
);

astroStone.register();
astroStone2.register();
astroStone3.register();