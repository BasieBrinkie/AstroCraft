#priority 9000
/* 
	----------------------------------------------------------------------------------------------------------------------
	All credit goes to the developers of Sevtech-Ages for writing this awesome wrapper.
	I initially wanted to write my own but theirs works exactly like how i wanted it to be.
	Thanks to the permission of the SevTech-Ages developers the development of this pack has been speeded up drastically.
	So once again credit goes to the awesome people of DarkPacks!
	---------------------------------------------------------------------------------------------------------------------
*/
/*	
	------------------------------------------------------------
	Recipe wrapper for easier development and a clearer scripts.
	------------------------------------------------------------
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.mods.ILoadedMods;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageDisabledItems;

/*	
	--------------------------------------------------------------------------------
	changed the classname to recipeBuilder because it sounds better than recipeUtil.
	--------------------------------------------------------------------------------
*/
zenClass recipeBuilder {
	zenConstructor() {}
	
	/*	
		------------------------------------------
		Process Method to handle Shapless Recipes.
		------------------------------------------
	*/

	function processShapelessNamed(map as IIngredient[][][string][IItemStack]) {
		for item, itemRecipes in map {
			for recipeName, recipesInner in itemRecipes {
				for i, recipe in recipesInner {
					var toName = recipeName;
					if (i > 0) {
						toName = toName ~ "_" ~ i;
					}
					if (recipeName == "nameless") {
						recipes.addShapeless(item, recipe);
					} else {
						recipes.addShapeless(toName, item, recipe);
					}
				}
			}
		}
	}

	function processShapeless(map as IIngredient[][][IItemStack]) {
		for item, itemRecipes in map {
			for recipe in itemRecipes {
				recipes.addShapeless(item, recipe);
			}
		}
	}

	/*	
		-----------------------------------------------------
		Process Method to handle Shaped and Mirrored Recipes.
		-----------------------------------------------------
	*/

	function processNamed(map as IIngredient[][][][string][IItemStack], isMirrored as bool) {
		for item, itemRecipes in map {
			for recipeName, recipesInner in itemRecipes {
				for i, recipe in recipesInner {
					var toName = recipeName;
					if (i > 0) {
						toName = toName ~ "_" ~ i;
					}

					if (recipeName == "nameless") {
						if (isMirrored) {
							recipes.addShapedMirrored(item, recipe);
						} else {
							recipes.addShaped(item, recipe);
						}
					} else {
						if (isMirrored) {
							recipes.addShapedMirrored(toName, item, recipe);
						} else {
							recipes.addShaped(toName, item, recipe);
						}
					}
				}
			}
		}
	}

	function process(map as IIngredient[][][][IItemStack], isMirrored as bool) {
		for item, itemRecipes in map {
			for recipe in itemRecipes {
				if (isMirrored) {
					recipes.addShapedMirrored(item, recipe);
				} 
				else {
					recipes.addShaped(item, recipe);
				}
			}
		}
	}

	/*	
		----------------------------------------
		Removes recipes simple as baking a cake!
		----------------------------------------
	*/

	function removeRecipes(map as IItemStack[]) {
		for toRemove in map {
			recipes.remove(toRemove);
		}
	}
	
	function removeRecipesString(map as string[]) {
		for toRemove in map {
			recipes.removeByRegex(toRemove);
		}
	}

	function removeRecipesMod(map as string[]) {
		if (!isNull(map) & dev) {
			for modName in map {
				recipes.removeByMod(modName);
			}
		}
	}	

	function removeAllRecipes() {
		if (!dev) {
			recipes.removeAll();
		}
	}

	/*	
		--------------------------------------------
		Process Method for handling Furnace Recipes.
		--------------------------------------------
	*/

	function processFurnace(map as IIngredient[][IItemStack]) {
		for output, array in map {
			for input in array {
				furnace.addRecipe(output, input);
			}
		}
	}

	/*	
		----------------------------------------
		Remove recipes from the Vanilla Furnace.
		----------------------------------------
	*/

	function removeFurnace(map as IIngredient[]) {
		for toRemove in map {
			furnace.remove(toRemove);
		}
	}
	
	function removeFurnace(map as IIngredient[IIngredient]) {
		for input, output in map {
			furnace.remove(input, output);
		}
	}

	function removeAllFurnaceRecipes() {
		if (!dev) {
			furnace.removeAll();
		}
	}

	/*	
		--------------------------------------------------------------------------------
		Hide an item from JEI.

		You can also set true to the second param to remove the recipes also.
		This also sets the Stage to Disabled incase people still have them or find them.
		--------------------------------------------------------------------------------
	*/

	function hideItems(removals as IIngredient[]) {
		hideItems(removals, false);
	}

	function hideItems(removals as IIngredient[], removeRecipe as bool) {
		if (removeRecipe) {
			for toHide in removals {
				mods.jei.JEI.removeAndHide(toHide);
				ZenStager.getStage(stageDisabledItems.stage).addIngredient(toHide, false);
			}
		}
		else {
			for toHide in removals {
				for toHideItem in toHide.items {
					mods.jei.JEI.hide(toHideItem);
				}
			}
		}
	}
}