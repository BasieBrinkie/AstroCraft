#loader contenttweaker
#priority 10000
import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;

global astrocraftTab as CreativeTab = VanillaFactory.createCreativeTab("astrocraft", <item:advancedrocketry:advbipropellantrocketmotor> as IItemStack);
astrocraftTab.register();