#loader mixin
#sideonly client

import native.net.minecraft.client.renderer.BufferBuilder;
import native.net.minecraft.util.math.Vec3d;
import native.org.lwjgl.opengl.GL11;
import native.zmaster587.advancedRocketry.AdvancedRocketry;
import native.zmaster587.advancedRocketry.api.dimension.solar.StellarBody;
import native.zmaster587.advancedRocketry.dimension.DimensionProperties;
import mixin.CallbackInfo;

#mixin Mixin
#{targets: "zmaster587.advancedRocketry.client.render.planet.RenderAsteroidSky"}
zenClass MixinRenderAsteroidSky {
    // Inject before Tessellator.getInstance().draw() inside drawStar()
    #mixin Inject 
    #{ 
    #   method: "drawStar", 
    #   at: {
    #       value: "INVOKE",
    #       target: "Lnet/minecraft/client/renderer/Tessellator;func_78381_a()V",
    #       shift: "BEFORE" 
    #   },
    #   cancellable: true
    #}
    function beforeTessellatorDraw(buffer as BufferBuilder, sun as StellarBody, properties as DimensionProperties, solarOrbitalDistance as int, sunSize as float, sunColor as Vec3d, multiplier as float, ci as CallbackInfo) as void {
        // Rotation angle, with rotation around star
        var orbitalDistance as float = properties.getSolarOrbitalDistance() as float;
        var solarSize as float = properties.getStar().getSize();
        var orbitalPeriod as float = (48.0f * pow(pow((orbitalDistance / (100.0f * solarSize)), 3.0f), 0.5f));
        var xrotangle as float = (((1000.0f*(AdvancedRocketry.proxy.getWorldTimeUniversal(0) as float) % (48.0f * 24000.0f * orbitalPeriod)) / (48.0f * 24000.0f * orbitalPeriod)) * 360.0f);
        
        var zero as float = 0.0f;
        var one as float = 1.0f;

        // Make Star align with x-axis
        GL11.glRotatef(82, one, zero, zero);


        // Apply rotation around Y-axis, time based
        GL11.glRotatef(xrotangle, zero, zero, one);
    }

    // Inject after Tessellator.getInstance().draw() inside drawStar() to correct the rotation that is applied
    #mixin Inject 
    #{ 
    #   method: "drawStar", 
    #   at: {
    #       value: "INVOKE",
    #       target: "Lnet/minecraft/client/renderer/Tessellator;func_78381_a()V",
    #       shift: "AFTER" 
    #   },
    #   cancellable: true
    #}
    function afterTessellatorDraw(buffer as BufferBuilder, sun as StellarBody, properties as DimensionProperties, solarOrbitalDistance as int, sunSize as float, sunColor as Vec3d, multiplier as float, ci as CallbackInfo) as void {
        // Rotation angle, with rotation around star
        var orbitalDistance as float = properties.getSolarOrbitalDistance() as float;
        var solarSize as float = properties.getStar().getSize();
        var orbitalPeriod as float = (48.0f * pow(pow((orbitalDistance / (100.0f * solarSize)), 3.0f), 0.5f));
        var xrotangle as float = (((1000.0f*(AdvancedRocketry.proxy.getWorldTimeUniversal(0) as float) % (48.0f * 24000.0f * orbitalPeriod)) / (48.0f * 24000.0f * orbitalPeriod)) * 360.0f);
        
        var zero as float = 0.0f;
        var one as float = 1.0f;

        // Apply rotation around Y-axis, time based
        GL11.glRotatef(-xrotangle, zero, zero, one);
        
        // Make Star align with x-axis
        GL11.glRotatef(-82, one, zero, zero);


    }
}