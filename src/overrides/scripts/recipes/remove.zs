#priority 1000
static skipModIDs as string[] = [
];

function init() {
	recipeBuilder.removeRecipesMod(skipModIDs);
	recipeBuilder.removeAllRecipes();
	recipeBuilder.removeAllFurnaceRecipes();
}