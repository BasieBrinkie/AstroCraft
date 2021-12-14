#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;


var cheatsheet = VanillaFactory.createItem("galactic_exploration_data");
cheatsheet.maxStackSize = 1;
cheatsheet.rarity = "COMMON";
cheatsheet.creativeTab = astrocraftTab;
cheatsheet.register();