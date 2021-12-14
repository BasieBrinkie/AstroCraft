#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

var astroIce = VanillaFactory.createBlock("astro_ice", <blockmaterial:ice>);
astroIce.setLightOpacity(5);
astroIce.setLightValue(0);
astroIce.setBlockHardness(5.0);
astroIce.setBlockResistance(5.0);
astroIce.setToolClass("pickaxe");
astroIce.setToolLevel(0);
astroIce.setBlockSoundType(<soundtype:snow>);
astroIce.setSlipperiness(0.96);
astroIce.creativeTab = astrocraftTab;

astroIce.register();