#loader mixin

import mixin.CallbackInfoReturnable;
import native.java.lang.Object;

#mixin Mixin
#{targets: "ivorius.reccomplex.shadow.mcopts.commands.parameters.Parameters"}
zenClass MixinParametersRecComplex {
    #mixin Inject
    #{
    #    method: "index",
    #    at: { value: "HEAD" },
    #    cancellable: true
    #}
    #mixin Static
    function returnEmptyIndex(cir as CallbackInfoReturnable) as void {
        cir.setReturnValue(0);
        cir.cancel();
    }
}