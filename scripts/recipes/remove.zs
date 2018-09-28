#priority 1000
static skipModIDs as string[] = [
];

function init() {
	recipeBuilder.hideAllItemsExcept(skipModIDs, dev);
}