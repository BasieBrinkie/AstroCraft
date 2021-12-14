#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;


var container = VanillaFactory.createItem("container");
container.maxStackSize = 64;
container.rarity = "COMMON";
container.creativeTab = astrocraftTab;
container.register();