#loader mixin

#mixin Mixin
#{targets: "zmaster587.libVulpes.tile.energy.TilePlugBase"}
zenClass MixinTilePlugBase {
    #mixin ModifyConstant
    #{
    #    method: "getMaxEnergy",
    #    constant: {intValue: 10000}
    #}
    function modifyMaxEnergyModifier(value as int) as int {
        return 20000000;
    }
}