#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;


var cheatsheet = VanillaFactory.createItem("multiblock_cheatsheet");
cheatsheet.maxStackSize = 1;
cheatsheet.rarity = "COMMON";
cheatsheet.creativeTab = astrocraftTab;
cheatsheet.register();