#priority 9500
#modloaded nuclearcraft
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

zenClass nuclearCraft {
	
	zenConstructor() {}

	function manufactoryAddRecipe(map as double[double][double][IIngredient[]][IIngredient]) {
		for outputItem, array1 in map {
			for inputItems, array2 in array1 {
				for multiplierTime, array3 in array2 { 
					for multiplierPower, radiationProcess in array3 {
						for inputItem in inputItems {
							mods.nuclearcraft.Manufactory.addRecipe(inputItem, outputItem, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function manufactoryRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.Manufactory.removeRecipeWithOutput(outputItem);
		}
	}

	function manufactoryRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.Manufactory.removeRecipeWithInput(inputItem);
		}
	}

	function manufactoryRemoveAll() {
		mods.nuclearcraft.Manufactory.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function isotopeSeparatorAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputItem2, array3 in array2 {
					for multiplierTime, array4 in array3 { 
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.Separator.addRecipe(inputItem, outputItem, outputItem2, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function isotopeSeparatorRemoveOutputRecipe(map as IIngredient[IIngredient]) {
		for outputItem, outputItem2 in map {
			mods.nuclearcraft.Separator.removeRecipeWithOutput(outputItem, outputItem2);
		}
	}

	function isotopeSeparatorRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.Separator.removeRecipeWithInput(inputItem);
		}
	}

	function isotopeRemoveAll() {
		mods.nuclearcraft.Separator.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function decayHastenerAddRecipe(map as double[double][double][IIngredient][IIngredient]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 { 
						mods.nuclearcraft.DecayHastener.addRecipe(inputItem, outputItem, multiplierTime, multiplierPower, radiationProcess);
					}
				}
			}
		}
	}

	function decayHastenerRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.DecayHastener.removeRecipeWithOutput(outputItem);
		}
	}

	function decayHastenerRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.DecayHastener.removeRecipeWithInput(inputItem);
		}
	}

	function decayHastenerRemoveAll() {
		mods.nuclearcraft.DecayHastener.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function fuelReprocessorAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputItem2, array3 in array2 {
					for outputItem3, array4 in array3 {
						for outputItem4, array5 in array4 {
							for outputItem5, array6 in array5 {
								for outputItem6, array7 in array6 {
									for outputItem7, array8 in array7 {
										for outputItem8, array9 in array8 {
											for multiplierTime, array10 in array9 { 
												for multiplierPower, radiationProcess in array10 {
													mods.nuclearcraft.FuelReprocessor.addRecipe(inputItem, outputItem, outputItem2, outputItem3, outputItem4, outputItem5, outputItem6, outputItem7, outputItem8, multiplierTime, multiplierPower, radiationProcess);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	function fuelReprocessorRemoveOutputRecipe(map as IIngredient[IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for outputItem, array2 in map {
			for outputItem2, array3 in array2 {
				for outputItem3, array4 in array3 {
					for outputItem4, array5 in array4 {
						for outputItem5, array6 in array5 {
							for outputItem6, array7 in array6 {
								for outputItem7, outputItem8 in array7 {
									mods.nuclearcraft.FuelReprocessor.removeRecipeWithOutput(outputItem, outputItem2, outputItem3, outputItem4, outputItem5, outputItem6, outputItem7, outputItem8);
								}
							}
						}
					}
				}
			}
		}
	}

	function fuelReprocessorRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.FuelReprocessor.removeRecipeWithInput(inputItem);
		}
	}

	function fuelReprocessorRemoveAll() {
		mods.nuclearcraft.FuelReprocessor.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////	

	function alloyFurnaceAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for inputItem2, array2 in array1 {
				for outputItem, array3 in array2 {
					for multiplierTime, array4 in array3 { 
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.AlloyFurnace.addRecipe(inputItem, inputItem2, outputItem, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function alloyFurnaceRemoveInputRecipe(map as IIngredient[IIngredient]) {
		for inputItem, inputItem2 in map {
			mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(inputItem, inputItem2);
		}
	}

	function alloyFurnaceRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(outputItem);
		}
	}

	function alloyFurnaceRemoveAll() {
		mods.nuclearcraft.AlloyFurnace.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////	

	function assemblerAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for inputItem2, array2 in array1 {
				for inputItem3, array3 in array2 {
					for inputItem4, array4 in array3 {
						for outputItem, array5 in array4 {
							for multiplierTime, array6 in array5 { 
								for multiplierPower, radiationProcess in array6 {
									mods.nuclearcraft.Assembler.addRecipe(inputItem, inputItem2, inputItem3, inputItem4, outputItem, multiplierTime, multiplierPower, radiationProcess);
								}
							}
						}
					}
				}
			}
		}
	}

	function assemblerRemoveInputRecipe(map as IIngredient[IIngredient][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for inputItem2, array2 in array1 {
				for inputItem3, inputItem4 in array2 {
					mods.nuclearcraft.Assembler.removeRecipeWithInput(inputItem, inputItem2, inputItem3, inputItem4);
				}
			}
		}
	}

	function assemblerRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.Assembler.removeRecipeWithOutput(outputItem);
		}
	}

	function assemblerRemoveAll() {
		mods.nuclearcraft.Assembler.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function infuserAddRecipe(map as double[double][double][ILiquidStack][IIngredient][IIngredient]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for inputFluid, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.Infuser.addRecipe(inputItem, inputFluid, outputItem, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function infuserRemoveInputRecipe(map as ILiquidStack[IIngredient]) {
		for inputItem, inputFluid in map {
			mods.nuclearcraft.Infuser.removeRecipeWithInput(inputItem, inputFluid);
		}
	}

	function infuserRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.Infuser.removeRecipeWithOutput(outputItem);
		}
	}

	function infuserRemoveAll() {
		mods.nuclearcraft.Infuser.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function melterAddRecipe(map as double[double][double][ILiquidStack][IIngredient]) {
		for outputFluid, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.Melter.addRecipe(inputItem, outputFluid, multiplierTime, multiplierPower, radiationProcess);
					}
				}
			}
		}
	}

	function melterRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.Melter.removeRecipeWithInput(inputItem);
		}
	}

	function melterRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.Melter.removeRecipeWithOutput(outputFluid);
		}
	}

	function melterRemoveAll() {
		mods.nuclearcraft.Melter.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function supercoolerAddRecipe(map as double[double][double][ILiquidStack][ILiquidStack]) {
		for outputFluid, array1 in map {
			for inputFluid, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.Supercooler.addRecipe(inputFluid, outputFluid, multiplierTime, multiplierPower, radiationProcess);
					}
				}
			}
		}
	}

	function supercoolerRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.Supercooler.removeRecipeWithInput(inputFluid);
		}
	}

	function supercoolerRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.Supercooler.removeRecipeWithOutput(outputFluid);
		}
	}

	function supercoolerRemoveAll() {
		mods.nuclearcraft.Supercooler.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function electrolyzerAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for outputFluid2, array3 in array2 {
					for outputFluid3, array4 in array3 {
						for outputFluid4, array5 in array4 {
							for multiplierTime, array6 in array5 {
								for multiplierPower, radiationProcess in array6 {
									mods.nuclearcraft.Electrolyzer.addRecipe(inputFluid, outputFluid, outputFluid2, outputFluid3, outputFluid4, multiplierTime, multiplierPower, radiationProcess);
								}
							}
						}
					}
				}
			}
		}
	}

	function electrolyserRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.Electrolyzer.removeRecipeWithInput(inputFluid);
		}
	}

	function electrolyzerRemoveOutputRecipe(map as IIngredient[IIngredient][IIngredient][IIngredient]) {
		for outputFluid, array1 in map {
			for outputFluid2, array2 in array1 {
				for outputFluid3, outputFluid4 in array2 {
					mods.nuclearcraft.Electrolyzer.removeRecipeWithOutput(outputFluid, outputFluid2, outputFluid3, outputFluid4);					
				}
			}
		}
	}

	function electrolyzerRemoveAll() {
		mods.nuclearcraft.Electrolyzer.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionEmergencyCoolingAddRecipe(map as double[ILiquidStack][ILiquidStack]) {
		for inputFluid, array1 in map {
			for outputFluid, coolingPerMB in array1 {
				mods.nuclearcraft.FissionEmergencyCooling.addRecipe(inputFluid, outputFluid, coolingPerMB);
			}
		}
	}

	function fissionEmergencyCoolingRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.FissionEmergencyCooling.removeRecipeWithInput(inputFluid);
		}
	}

	function fissionEmergencyCoolingRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.FissionEmergencyCooling.removeRecipeWithOutput(outputFluid);
		}
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function ingotFormerAddRecipe(map as double[double][double][ILiquidStack][IIngredient]) {
		for outputItem, array1 in map {
			for inputFluid, array2 in array1 {
				for multiplierTime, array3 in array2{
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.IngotFormer.addRecipe(inputFluid, outputItem, multiplierTime, multiplierPower, radiationProcess);
					}
				}
			}
		}
	}

	function ingotFormerRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.IngotFormer.removeRecipeWithInput(inputFluid);
		}
	}

	function ingotFormerRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
				mods.nuclearcraft.IngotFormer.removeRecipeWithOutput(outputItem);	
		}
	}

	function ingotFormerRemoveAll() {
		mods.nuclearcraft.IngotFormer.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function pressurizerAddRecipe(map as double[double][double][IIngredient][IIngredient]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.Pressurizer.addRecipe(inputItem, outputItem, multiplierTime, multiplierPower, radiationProcess);
					}
				}
			}
		}
	}

	function pressurizerRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.Pressurizer.removeRecipeWithInput(inputItem);
		}
	}

	function pressurizerRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(outputItem);	
		}
	}

	function pressurizerRemoveAll() {
		mods.nuclearcraft.Pressurizer.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function chemicalReactorAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for inputFluid2, array2 in array1 {
				for outputFluid, array3 in array2 {
					for outputFluid2, array4 in array3 {
						for multiplierTime, array5 in array4 {
							for multiplierPower, radiationProcess in array5 {
								mods.nuclearcraft.ChemicalReactor.addRecipe(inputFluid, inputFluid2, outputFluid, outputFluid2, multiplierTime, multiplierPower, radiationProcess);
							}
						}
					}
				}
			}
		}
	}

	function chemicalReactorRemoveInputRecipe(map as IIngredient[IIngredient]) {
		for inputFluid, inputFluid2 in map {
			mods.nuclearcraft.ChemicalReactor.removeRecipeWithInput(inputFluid, inputFluid2);
		}
	}

	function chemicalReactorRemoveOutputRecipe(map as IIngredient[IIngredient]) {
		for outputFluid, outputFluid2 in map {
				mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(outputFluid, outputFluid2);
		}
	}

	function chemicalReactorRemoveAll() {
		mods.nuclearcraft.ChemicalReactor.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function saltMixerAddRecipe(map as double[double][double][ILiquidStack][ILiquidStack][ILiquidStack]) {
		for inputFluid, array1 in map {
			for inputFluid2, array2 in array1 {
				for outputFluid, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.SaltMixer.addRecipe(inputFluid, inputFluid2, outputFluid, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function saltMixerRemoveInputRecipe(map as ILiquidStack[ILiquidStack]) {
		for inputFluid, inputFluid2 in map {
				mods.nuclearcraft.SaltMixer.removeRecipeWithInput(inputFluid, inputFluid2);
		}
	}

	function saltMixerRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
				mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(outputFluid);
		}
	}

	function saltMixerRemoveAll() {	
		mods.nuclearcraft.SaltMixer.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function crystallizerAddRecipe(map as double[double][double][ILiquidStack][IIngredient]) {
		for outputItem, array1 in map {
			for inputFluid, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.Crystallizer.addRecipe(inputFluid, outputItem, multiplierTime, multiplierPower, radiationProcess);
					}
				}
			}
		}
	}

	function crystallizerRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.Crystallizer.removeRecipeWithInput(inputFluid);
		}
	}

	function crystallizerRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.Crystallizer.removeRecipeWithOutput(outputItem);	
		}
	}

	function crystallizerRemoveAll() {
		mods.nuclearcraft.Crystallizer.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function fluidEnricherAddRecipe(map as double[double][double][IIngredient][ILiquidStack][ILiquidStack]) {
		for outputFluid, array1 in map {
			for inputFluid, array2 in array1 {
				for inputItem, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.Enricher.addRecipe(inputItem, inputFluid, outputFluid, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function fluidEnricherRemoveInputRecipe(map as ILiquidStack[IIngredient]) {
		for inputItem, inputFluid in map {
			mods.nuclearcraft.Enricher.removeRecipeWithInput(inputItem, inputFluid);
		}
	}

	function fluidEnricherRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.Enricher.removeRecipeWithOutput(outputFluid);	
		}
	}

	function fluidEnricherRemoveAll() {
		mods.nuclearcraft.Enricher.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function fluidExtractorAddRecipe(map as double[double][double][ILiquidStack][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputFluid, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.Extractor.addRecipe(inputItem, outputItem, outputFluid, multiplierTime, multiplierPower, radiationProcess);
						}
					}
				}
			}
		}
	}

	function fluidExtractorRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.Extractor.removeRecipeWithInput(inputItem);
		}
	}

	function fluidExtractorRemoveOutputRecipe(map as ILiquidStack[IIngredient]) {
		for outputItem, outputFluid in map {
			mods.nuclearcraft.Extractor.removeRecipeWithOutput(outputItem, outputFluid);
		}
	}

	function fluidExtractorRemoveAll() {
		mods.nuclearcraft.Extractor.removeAllRecipes();
	}

////////////////////////////////////////////////////////////////////////////////////////////////

	function centrifugeAddRecipe(map as double[double][double][ILiquidStack][ILiquidStack][ILiquidStack][ILiquidStack][ILiquidStack][ILiquidStack][ILiquidStack]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for outputFluid2, array3 in array2 {
					for outputFluid3, array4 in array3 {
						for outputFluid4, array5 in array4 {
							for outputFluid5, array6 in array5 {
								for outputFluid6, array7 in array6 {
									for multiplierTime, array8 in array7 {
										for multiplierPower, radiationProcess in array8 {
											mods.nuclearcraft.Centrifuge.addRecipe(inputFluid, outputFluid, outputFluid2, outputFluid3, outputFluid4, outputFluid5, outputFluid6, multiplierTime, multiplierPower, radiationProcess);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	function centrifugeRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.Centrifuge.removeRecipeWithInput(inputFluid);
		}
	}

	function centrifugeRemoveOutputRecipe(map as ILiquidStack[ILiquidStack][ILiquidStack][ILiquidStack][ILiquidStack][ILiquidStack]) {
		for outputFluid, array1 in map {
			for outputFluid2, array2 in array1 {
				for outputFluid3, array3 in array2 {
					for outputFluid4, array4 in array3 {
						for outputFluid5, outputFluid6 in array4 {
							mods.nuclearcraft.Centrifuge.removeRecipeWithOutput(outputFluid, outputFluid2, outputFluid3, outputFluid4, outputFluid5, outputFluid6);
						}
					}
				}
			}	
		}
	}

	function centrifugeRemoveAll() {
		mods.nuclearcraft.Centrifuge.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////	

	function rockCrusherAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputItem2, array3 in array2 {
					for outputItem3, array4 in array3 {
						for multiplierTime, array5 in array4 {
							for multiplierPower, radiationProcess in array5 {
								mods.nuclearcraft.RockCrusher.addRecipe(inputItem, outputItem, outputItem2, outputItem3, multiplierTime, multiplierPower, radiationProcess);
							}
						}
					}
				}
			}
		}
	}

	function rockCrusherRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.RockCrusher.removeRecipeWithInput(inputItem);
		}
	}

	function rockCrusherRemoveOutputRecipe(map as IIngredient[IIngredient][IIngredient]) {
		for outputItem, array1 in map {
			for outputItem2, outputItem3 in array1 {
				mods.nuclearcraft.RockCrusher.removeRecipeWithOutput(outputItem, outputItem2, outputItem3);
			}
		}
	}

	function rockCrusherRemoveAll() {
		mods.nuclearcraft.RockCrusher.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function decayGeneratorAddRecipe(map as double[double][double][IIngredient][IIngredient]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for meanLifeTime, array3 in array2 {
					for power, radiationProcess in array3 {
						mods.nuclearcraft.DecayGenerator.addRecipe(inputItem, outputItem, meanLifeTime, power, radiationProcess);
					}
				}
			}
		}
	}

	function decayGeneratorRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.DecayGenerator.removeRecipeWithInput(inputItem);
		}
	}

	function decayGeneratorRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.DecayGenerator.removeRecipeWithOutput(outputItem);
		}
	}

	function decayGeneratorRemoveAll() {
		mods.nuclearcraft.DecayGenerator.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionModeratorAddRecipe(map as double[int][IIngredient]) {
		for inputItem, array1 in map {
			for fluxFactor, efficiency in array1 {
				mods.nuclearcraft.FissionModerator.add(inputItem, fluxFactor, efficiency);
			}
		}
	}

	function fissionModeratorRemove(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.FissionModerator.remove(inputItem);
		}
	}

	function fissionModeratorRemoveAll() {
		mods.nuclearcraft.FissionModerator.removeAll();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionReflectorAddRecipe(map as double[double][IIngredient]) {
		for inputItem, array1 in map {
			for reflectivity, efficiency in array1 {
				mods.nuclearcraft.FissionReflector.add(inputItem, efficiency, reflectivity);
			}
		}
	}

	function fissionReflectorRemove(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.FissionReflector.remove(inputItem);
		}
	}

	function fissionReflectorRemoveAll() {
		mods.nuclearcraft.FissionReflector.removeAll();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionIrradiatorAddRecipe(map as double[double][double][int][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for fluxRequired, array3 in array2 {
					for heatPerFlux, array4 in array3 {
						for efficiency, reflectivity in array4 {
							mods.nuclearcraft.FissionIrradiator.addRecipe(inputItem, outputItem, fluxRequired, heatPerFlux, efficiency, reflectivity);
						}
					}
				}
			}
		}
	}

	function fissionIrradiatorRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.FissionIrradiator.removeRecipeWithInput(inputItem);
		}
	}

	function fissionIrradiatorRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.FissionIrradiator.removeRecipeWithOutput(outputItem);
		}
	}

	function fissionIrradiatorRemoveAll() {
		mods.nuclearcraft.FissionIrradiator.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionSolidAddRecipe(map as double[bool][double][int][double][int][int][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for time, array3 in array2 {
					for heat, array4 in array3 {
						for efficiency, array5 in array4 {
							for criticality, array6 in array5 {
								for decayFactor, array7 in array6 {
									for selfPriming, radiation in array7 {
										mods.nuclearcraft.SolidFission.addRecipe(inputItem, outputItem, time, heat, efficiency, criticality, decayFactor, selfPriming, radiation);
									}
								}
							}
						}
					}
				}
			}
		}
	}

	function fissionSolidRemoveInputRecipe(map as IIngredient[]) {
		for inputItem in map {
			mods.nuclearcraft.SolidFission.removeRecipeWithInput(inputItem);
		}
	}

	function fissionSolidRemoveOutputRecipe(map as IIngredient[]) {
		for outputItem in map {
			mods.nuclearcraft.SolidFission.removeRecipeWithOutput(outputItem);
		}
	}

	function fissionSolidRemoveAll() {
		mods.nuclearcraft.SolidFission.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionHeatingAddRecipe(map as int[ILiquidStack][ILiquidStack]) {
		for inputFluid, array1 in map {
			for outputFluid, heatPerMB in array1 {
				mods.nuclearcraft.FissionHeating.addRecipe(inputFluid, outputFluid, heatPerMB);
			}
		}
	}

	function fissionHeatingRemoveInputRecipe(map as ILiquidStack[]) {
		for inputItem in map {
			mods.nuclearcraft.FissionHeating.removeRecipeWithInput(inputItem);
		}
	}

	function fissionHeatingRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputItem in map {
			mods.nuclearcraft.FissionHeating.removeRecipeWithOutput(outputItem);
		}
	}

	function fissionHeatingRemoveAll() {
		mods.nuclearcraft.FissionHeating.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function saltFissionAddRecipe(map as double[bool][double][int][double][int][double][IIngredient][IIngredient]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for time, array3 in array2 {
					for heat, array4 in array3 {
						for efficiency, array5 in array4 {
							for criticality, array6 in array5 {
								for decayFactor, array7 in array6 {
									for selfPriming, radiation in array7 {
										mods.nuclearcraft.SaltFission.addRecipe(inputItem, outputItem, time, heat, efficiency, criticality, decayFactor, selfPriming, radiation);
									}
								}
							}
						}
					}
				}
			}
		}
	}

	function saltFissionRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.SaltFission.removeRecipeWithInput(inputFluid);
		}
	}

	function saltFissionRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.SaltFission.removeRecipeWithOutput(outputFluid);
		}
	}

	function saltFissionRemoveAll() {
		mods.nuclearcraft.SaltFission.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function heatExchangerAddRecipe(map as int[int][double][ILiquidStack][ILiquidStack]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for requiredHeat, array3 in array2 {
					for tempIn, tempOut in array3 {
						mods.nuclearcraft.HeatExchanger.addRecipe(inputFluid, outputFluid, requiredHeat, tempIn, tempOut);
					}
				}
			}
		}
	}

	function heatExchangerRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.HeatExchanger.removeRecipeWithInput(inputFluid);
		}
	}

	function heatExchangerRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.HeatExchanger.removeRecipeWithOutput(outputFluid);
		}
	}

	function heatExchangerRemoveAll() {
		mods.nuclearcraft.HeatExchanger.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////

	function steamTurbineAddRecipe(map as double[string][double][double][ILiquidStack][ILiquidStack]) {
		for outputFluid, array1 in map {
			for inputFluid, array2 in array1 {
				for powerPerMB, array3 in array2 {
					for expansionPerMB, array4 in array3 {
						for particleName, particleSpeedMultiplier in array4 {
							mods.nuclearcraft.Turbine.addRecipe(inputFluid, outputFluid, powerPerMB, particleName, particleSpeedMultiplier);
						}
					}
				}
			}
		}
	}

	function steamTurbineRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.Turbine.removeRecipeWithInput(inputFluid);
		}
	}

	function steamTurbineRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.Turbine.removeRecipeWithOutput(outputFluid);
		}
	}

	function steamTurbineRemoveAll() {
		mods.nuclearcraft.Turbine.removeAllRecipes();
	}


///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function condenserAddRecipe(map as int[double][ILiquidStack][ILiquidStack]) {
		for outputFluid, array1 in map {
			for inputFluid, array2 in array1 {
				for condensTemp, coolingReq in array2 {
					mods.nuclearcraft.Condenser.addRecipe(inputFluid, outputFluid, coolingReq, condensTemp);
				}		
			}
		}
	}

	function condenserRemoveInputRecipe(map as ILiquidStack[]) {
		for inputFluid in map {
			mods.nuclearcraft.Condenser.removeRecipeWithInput(inputFluid);
		}
	}

	function condenserRemoveOutputRecipe(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.nuclearcraft.Condenser.removeRecipeWithOutput(outputFluid);
		}
	}

	function condenserRemoveAll() {
		mods.nuclearcraft.Condenser.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function radiationScrubber(map as double[int][int][ILiquidStack][IIngredient][ILiquidStack][IIngredient]) {
		for outputItem, array1 in map {
			for outputFluid, array2 in array1 {
				for inputItem, array3 in array2 {
					for inputFluid, array4 in array3 {
						for processTime, array5 in array4 {
							for processPower, efficiency in array5 {
								mods.nuclearcraft.RadiationScrubber.addRecipe(inputItem, inputFluid, outputItem, outputFluid, processTime, processPower, efficiency);
							}
						}
					}
				}
			}
		}
	}

	function radiationScruberRemoveInputRecipe(map as ILiquidStack[IIngredient]) {
		for inputItem, inputFluid in map {
			mods.nuclearcraft.RadiationScrubber.removeRecipeWithInput(inputItem, inputFluid);
		}
	}

	function radiationScruberRemoveOutputRecipe(map as ILiquidStack[IIngredient]) {
		for outputItem, outputFluid in map {
			mods.nuclearcraft.RadiationScrubber.removeRecipeWithOutput(outputItem, outputFluid);
		}
	}

	function radiationScruberRemoveAll() {
		mods.nuclearcraft.RadiationScrubber.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function radiationBlockMutation(map as double[IIngredient][IIngredient]) {
		for outputItem, array1 in map {
			for inputItem, radiationThreshold in array1 {
				mods.nuclearcraft.RadiationBlockMutation.addRecipe(inputItem, outputItem, radiationThreshold);
			}
		}
	}

	function radiationBlockMutationRemoveInputRecipe(map as ILiquidStack[IIngredient]) {
		for inputItem, inputFluid in map {
			mods.nuclearcraft.RadiationBlockMutation.removeRecipeWithInput(inputFluid);
		}
	}

	function radiationBlockMutationRemoveOutputRecipe(map as ILiquidStack[IIngredient]) {
		for outputItem, outputFluid in map {
			mods.nuclearcraft.RadiationBlockMutation.removeRecipeWithOutput(outputFluid);
		}
	}

	function radiationBlockMutationRemoveAll() {
		mods.nuclearcraft.RadiationBlockMutation.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function radiationImmunityStages(map as string[]) {
		mods.nuclearcraft.Radiation.setRadiationImmunityGameStages(true, map);
	}

	function radiationImmuneEntity(map as double[IEntityLivingBase]) {
		for entity, radiation in map {
			entity.setRadiation(radiation, true);
		}
	}

	function radiationSetResistanceEntity(map as double[IEntityLivingBase]) {
		for entity, radiationResistance in map {
			entity.setRadiationResistance(radiationResistance);
		}
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function removeAllRecipes() {
		if (!dev) {
			alloyFurnaceRemoveAll();
			assemblerRemoveAll();
			centrifugeRemoveAll();
			chemicalReactorRemoveAll();
			condenserRemoveAll();
			crystallizerRemoveAll();
			decayGeneratorRemoveAll();
			decayHastenerRemoveAll();
			electrolyzerRemoveAll();
			fissionIrradiatorRemoveAll();
			fissionReflectorRemoveAll();
			fissionHeatingRemoveAll();
			fissionModeratorRemoveAll();
			fissionSolidRemoveAll();
			fluidEnricherRemoveAll();
			fluidExtractorRemoveAll();
			fuelReprocessorRemoveAll();
			heatExchangerRemoveAll();
			infuserRemoveAll();
			ingotFormerRemoveAll();
			isotopeRemoveAll();
			manufactoryRemoveAll();
			melterRemoveAll();
			pressurizerRemoveAll();
			rockCrusherRemoveAll();
			saltFissionRemoveAll();
			saltMixerRemoveAll();
			steamTurbineRemoveAll();
			supercoolerRemoveAll();
		}
	}
}