
//Function
oredictBuilder(IOredictEntry[][IItemStack])

//Example array
var addToOredict as IOredictEntry[][IItemStack] = {
	//To which oredict?
	<ore:gold>: [
		//Which items to that oredict?
		<minecraft:gold_ingot>,
		<mekanism:gold_ingot>
	],
	//And again, To which oredict?
	<ore:iron>: [
		//You should get the hang of it
		<minecraft:iron_ingot>,
		<mekanism:iron_ingot>
	]
}

oredictBuilder.processItems(addToOredict);