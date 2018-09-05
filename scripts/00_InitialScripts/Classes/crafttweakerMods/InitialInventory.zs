import mods.initialinventory.InvHandler.addStartingItem as addSpawnItem;

zenClass spawnItems {
	zenConstructor() {}

	/* 	----------------------------------------
		Function to add items to spawn inventory
		Syntax: spawnItems.add(int[IItemStack])
		----------------------------------------
	*/

	function add(map as int[IItemStack]) {
		for item, spawnslot in map {
			addSpawnItem(item, spawnslot);
		}
	}
}