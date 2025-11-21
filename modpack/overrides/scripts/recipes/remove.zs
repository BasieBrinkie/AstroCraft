#priority 1000
static skipModIDs as string[] = [
];

function initFurnace() {
	recipeBuilder.removeAllFurnaceRecipes();
}

function init() {
	recipeBuilder.removeRecipesMod(skipModIDs);
	recipeBuilder.removeAllRecipes();
}