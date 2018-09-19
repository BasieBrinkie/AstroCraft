#priority 9000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

zenClass nbt {
	zenConstructor() {}

	function pressureTank_Oxygen(oxygen as int, tier as short) as IData {
		val oxygenTag as IData = {
			size : 6, 
			outputItems: [
				{
					Slot: 0 as byte,
				 	ForgeCaps: 
				 		{
				 			"astralsorcery:cap_item_amulet_holder": {}
				 		}, 
				 	id: "advancedrocketry:pressuretank",
				 	Count: 1 as byte,
				 	tag: 
				 		{
				 			Fluid: 
				 				{
				 					FluidName: "oxygen",
				 					Amount: oxygen
				 				}
				 		},
			 		Damage: tier
				 }
			]
		};	
		return  oxygenTag;
	}
}

