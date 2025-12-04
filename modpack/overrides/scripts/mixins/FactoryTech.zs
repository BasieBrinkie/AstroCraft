#loader mixin

import mixin.CallbackInfo;
import native.net.minecraft.item.ItemStack;

#mixin Mixin
#{targets: "dalapo.factech.plugins.crafttweaker.Centrifuge$Add"}
zenClass MixinCentrifuge {
    // Fix the constructor such that the crafttweaker plugin accepts "works with stone parts".
    #mixin Shadow
    var worksWithBad as bool;

    #mixin Inject
    #{
    #  method: "<init>",     
    #  at: {
    #     value: "TAIL" 
    #  },
    #  cancellable: false
    #}
    function onAdd(inItem as ItemStack, outItem as ItemStack[], worksWithBad as bool, ci as CallbackInfo) as void {
        this0.worksWithBad = worksWithBad;
    }
}