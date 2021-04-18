#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;

var container_nuclear = VanillaFactory.createItem("container_nuclear");
container_nuclear.maxStackSize = 1;
container_nuclear.rarity = "COMMON";
container_nuclear.creativeTab = astrocraftTab;
container_nuclear.register();