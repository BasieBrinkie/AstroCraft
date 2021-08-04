import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.entity.IEntity;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.IEventPositionable;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;

//----------------------------------------------------------------------
//   Contenttweaker doesn't deal with blockstates so it is implemented
//   with this script.
//
//   Define the blocks that need to be checked in the static map below:
//   You still need to define the variants "facing=<direction>" in blockstate
//----------------------------------------------------------------------

static map as string[] = [
    <contenttweaker:blackbox_circular_shuttle>.definition.id,
    <contenttweaker:blackbox_rectangular_shuttle>.definition.id
];

function init() {
    events.onBlockPlace(function(event as crafttweaker.event.BlockPlaceEvent) {
        var blockState = event.current;
        print("this works");
        print("block placed");
        print(blockState.block.definition.id == <contenttweaker:blackbox_rectangular_shuttle>.definition.id);

        if (map in event.block.definition.id) {
            var yaw = event.player.rotationYaw;
            var pitch = event.player.rotationPitch;
            var direction = "south";

            if (yaw < 135.0 && yaw > 45.0) {
                var direction = "west";
            }
            if (yaw >= 135.0 && yaw <= -135.0) {
                var direction = "north";
            }
            if (yaw < -45.0 && yaw > -135.0) {
                var direction = "east";
            }
            blockState.withProperty("facing", direction);
            var position = event.position;
            event.world.setBlockState(blockState, position);

            print(blockState.commandString);
        }
    });
}