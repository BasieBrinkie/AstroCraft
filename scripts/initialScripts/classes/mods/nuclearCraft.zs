#priority 9500
#modloaded nuclearcraft
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;

zenClass nuclearCraft {
	
	zenConstructor() {}

	function manufactoryAddRecipe(map as double[double][double][IItemStack[]][IItemStack]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 { 
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.manufactory.addRecipe([inputItem, outputItem, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function manufactoryRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([outputItem]);
		}
	}

	function manufactoryRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.manufactory.removeRecipeWithInput([inputItem]);
		}
	}

	function manufactoryRemoveAll() {
		mods.nuclearcraft.manufactory.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function isotopeSeparatorAddRecipe(map as double[double][double][IItemStack][IItemStack][IItemStack]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputItem2, array3 in array2 {
					for multiplierTime, array4 in array3 { 
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.isotope_separator.addRecipe([inputItem, outputItem, outputItem2, multiplierTime, multiplierPower, radiationProcess]);
						}
					}
				}
			}
		}
	}

	function isotopeSeparatorRemoveOutputRecipe(map as IItemStack[IItemStack]) {
		for outputItem, outputItem2 in map {
			mods.nuclearcraft.isotope_separator.removeRecipeWithOutput([outputItem, outputItem2]);
		}
	}

	function isotopeSeparatorRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.isotope_separator.removeRecipeWithInput([inputItem]);
		}
	}

	function isotopeRemoveAll() {
		mods.nuclearcraft.isotope_separator.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function decayHastenerAddRecipe(map as double[double][double][IItemStack][IItemStack]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 { 
						mods.nuclearcraft.decay_hastener.addRecipe([inputItem, outputItem, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function decayHastenerRemoveOutputRecipe(map as IItemStack[IItemStack]) {
		for outputItem, outputItem2 in map {
			mods.nuclearcraft.decay_hastener.removeRecipeWithOutput([outputItem, outputItem2]);
		}
	}

	function decayHastenerRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.decay_hastener.removeRecipeWithInput([inputItem]);
		}
	}

	function decayHastenerRemoveAll() {
		mods.nuclearcraft.decay_hastener.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function fuelReprocessorAddRecipe(map as double[double][double][IItemStack][IItemStack][IItemStack][IItemStack][IItemStack]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputItem2, array3 in array2 {
					for outputItem3, array4 in array3 {
						for outputItem4, array5 in array4 {
							for multiplierTime, array6 in array5 { 
								for multiplierPower, radiationProcess in array6 {
									mods.nuclearcraft.fuel_reprocessor.addRecipe([inputItem, outputItem, outputItem2, outputItem3, outputItem4, multiplierTime, multiplierPower, radiationProcess]);
								}
							}
						}
					}
				}
			}
		}
	}

	function fuelReprocessorRemoveOutputRecipe(map as IItemStack[IItemStack][IItemStack][IItemStack]) {
		for outputItem, array1 in map {
			for outputItem2, array2 in array1 {
				for outputItem3, outputItem4 in array2 {
					mods.nuclearcraft.fuel_reprocessor.removeRecipeWithOutput([outputItem, outputItem2, outputItem3, outputItem4]);
				}
			}
		}
	}

	function fuelReprocessorRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.fuel_reprocessor.removeRecipeWithInput([inputItem]);
		}
	}

	function fuelReprocessorRemoveAll() {
		mods.nuclearcraft.fuel_reprocessor.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////	

	function alloyFurnaceAddRecipe(map as double[double][double][IItemStack][IItemStack][IItemStack]) {
		for inputItem, array1 in map {
			for inputItem2, array2 in array1 {
				for outputItem, array3 in array2 {
					for multiplierTime, array4 in array3 { 
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.alloy_furnace.addRecipe([inputItem, inputItem2, outputItem, multiplierTime, multiplierPower, radiationProcess]);
						}
					}
				}
			}
		}
	}

	function alloyFurnaceRemoveInputRecipe(map as IItemStack[IItemStack]) {
		for inputItem, inputItem2 in map {
			mods.nuclearcraft.alloy_furnace.removeRecipeWithInput([inputItem, inputItem2]);
		}
	}

	function alloyFurnaceRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([outputItem]);
		}
	}

	function alloyFurnaceRemoveAll() {
		mods.nuclearcraft.alloy_furnace.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function infuserAddRecipe(map as double[double][double][IIngredient][IItemStack][IItemStack]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for inputFluid, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.infuser.addRecipe([inputItem, inputFluid, outputItem, multiplierTime, multiplierPower, radiationProcess]);
						}
					}
				}
			}
		}
	}

	function infuserRemoveInputRecipe(map as IItemStack[IItemStack]) {
		for inputItem, inputItem2 in map {
			mods.nuclearcraft.infuser.removeRecipeWithInput([inputItem, inputItem2]);
		}
	}

	function infuserRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.infuser.removeRecipeWithOutput([outputItem]);
		}
	}

	function infuserRemoveAll() {
		mods.nuclearcraft.infuser.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function melterAddRecipe(map as double[double][double][IIngredient][IItemStack]) {
		for outputFluid, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.melter.addRecipe([inputItem, outputFluid, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function melterRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.melter.removeRecipeWithInput([inputItem]);
		}
	}

	function melterRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.melter.removeRecipeWithOutput([outputFluid]);
		}
	}

	function melterRemoveAll() {
		mods.nuclearcraft.melter.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function supercoolerAddRecipe(map as double[double][double][IIngredient][IIngredient]) {
		for outputFluid, array1 in map {
			for inputFluid, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.supercooler.addRecipe([inputFluid, outputFluid, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function supercoolerRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.supercooler.removeRecipeWithInput([inputFluid]);
		}
	}

	function supercoolerRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.supercooler.removeRecipeWithOutput([outputFluid]);
		}
	}

	function supercoolerRemoveAll() {
		mods.nuclearcraft.supercooler.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function electrolyserAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for outputFluid2, array3 in array2 {
					for outputFluid3, array4 in array3 {
						for outputFluid4, array5 in array4 {
							for multiplierTime, array6 in array5 {
								for multiplierPower, radiationProcess in array6 {
									mods.nuclearcraft.electrolyser.addRecipe([inputFluid, outputFluid, outputFluid2, outputFluid3, outputFluid4, multiplierTime, multiplierPower, radiationProcess]);
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
			mods.nuclearcraft.electrolyser.removeRecipeWithInput([inputFluid]);
		}
	}

	function electrolyserRemoveOutputRecipe(map as IIngredient[IIngredient][IIngredient][IIngredient]) {
		for outputFluid, array1 in map {
			for outputFluid2, array2 in array1 {
				for outputFluid3, outputFluid4 in array2 {
					mods.nuclearcraft.electrolyser.removeRecipeWithOutput([outputFluid, outputFluid2, outputFluid3, outputFluid4]);					
				}
			}
		}
	}

	function electrolyserRemoveAll() {
		mods.nuclearcraft.electrolyser.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function irradiatorAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for inputFluid2, array2 in array1 {
				for outputFluid, array3 in array2 {
					for outputFluid2, array4 in array3 {
						for multiplierTime, array5 in array4 {
							for multiplierPower, radiationProcess in array5 {
								mods.nuclearcraft.irradiator.addRecipe([inputFluid, inputFluid2, outputFluid, outputFluid2, multiplierTime, multiplierPower, radiationProcess]);
							}
						}
					}
				}
			}
		}
	}

	function irradiatorRemoveInputRecipe(map as IIngredient[IIngredient]) {
		for inputFluid, inputFluid2 in map {
			mods.nuclearcraft.irradiator.removeRecipeWithInput([inputFluid, inputFluid2]);
		}
	}

	function irradiatorRemoveOutputRecipe(map as IIngredient[IIngredient]) {
		for outputFluid, outputFluid2 in map {
			mods.nuclearcraft.irradiator.removeRecipeWithOutput([outputFluid, outputFluid2]);
		}
	}

	function irradiatorRemoveAll() {
		mods.nuclearcraft.irradiator.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function ingotFormerAddRecipe(map as double[double][double][IIngredient][IItemStack]) {
		for outputItem, array1 in map {
			for inputFluid, array2 in array1 {
				for multiplierTime, array3 in array2{
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.ingot_former.addRecipe([inputFluid, outputItem, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function ingotFormerRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.ingot_former.removeRecipeWithInput([inputFluid]);
		}
	}

	function ingotFormerRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
				mods.nuclearcraft.ingot_former.removeRecipeWithOutput([outputItem]);	
		}
	}

	function ingotFormerRemoveAll() {
		mods.nuclearcraft.ingot_former.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function pressurizerAddRecipe(map as double[double][double][IItemStack][IItemStack]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.pressurizer.addRecipe([inputItem, outputItem, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function pressurizerRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.pressurizer.removeRecipeWithInput([inputItem]);
		}
	}

	function pressurizerRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.pressurizer.removeRecipeWithOutput([outputItem]);	
		}
	}

	function pressurizerRemoveAll() {
		mods.nuclearcraft.pressurizer.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function chemicalReactorAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for inputFluid2, array2 in array1 {
				for outputFluid, array3 in array2 {
					for outputFluid2, array4 in array3 {
						for multiplierTime, array5 in array4 {
							for multiplierPower, radiationProcess in array5 {
								mods.nuclearcraft.chemical_reactor.addRecipe([inputFluid, inputFluid2, outputFluid, outputFluid2, multiplierTime, multiplierPower, radiationProcess]);
							}
						}
					}
				}
			}
		}
	}

	function chemicalReactorRemoveInputRecipe(map as IIngredient[IIngredient]) {
		for inputFluid, inputFluid2 in map {
			mods.nuclearcraft.chemical_reactor.removeRecipeWithInput([inputFluid, inputFluid2]);
		}
	}

	function chemicalReactorRemoveOutputRecipe(map as IIngredient[IIngredient]) {
		for outputFluid, outputFluid2 in map {
				mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput([outputFluid, outputFluid2]);
		}
	}

	function chemicalReactorRemoveAll() {
		mods.nuclearcraft.chemical_reactor.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////

	function saltMixerAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for inputFluid2, array2 in array1 {
				for outputFluid, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.salt_mixer.addRecipe([inputFluid, inputFluid2, outputFluid, multiplierTime, multiplierPower, radiationProcess]);
						}
					}
				}
			}
		}
	}

	function saltMixerRemoveInputRecipe(map as IIngredient[IIngredient]) {
		for inputFluid, inputFluid2 in map {
				mods.nuclearcraft.salt_mixer.removeRecipeWithInput([inputFluid, inputFluid2]);
		}
	}

	function saltMixerRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
				mods.nuclearcraft.salt_mixer.removeRecipeWithOutput([outputFluid]);
		}
	}

	function saltMixerRemoveAll() {	
		mods.nuclearcraft.salt_mixer.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////

	function crystallizerAddRecipe(map as double[double][double][IIngredient][IItemStack]) {
		for outputItem, array1 in map {
			for inputFluid, array2 in array1 {
				for multiplierTime, array3 in array2 {
					for multiplierPower, radiationProcess in array3 {
						mods.nuclearcraft.crystallizer.addRecipe([inputFluid, outputItem, multiplierTime, multiplierPower, radiationProcess]);
					}
				}
			}
		}
	}

	function crystallizerRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.crystallizer.removeRecipeWithInput([inputFluid]);
		}
	}

	function crystallizerRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.crystallizer.removeRecipeWithOutput([outputItem]);	
		}
	}

	function crystallizerRemoveAll() {
		mods.nuclearcraft.crystallizer.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function fluidEnricherAddRecipe(map as double[double][double][IIngredient][IItemStack][IIngredient]) {
		for outputFluid, array1 in map {
			for inputFluid, array2 in array1 {
				for inputItem, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.dissolver.addRecipe([inputItem, inputFluid, outputFluid, multiplierTime, multiplierPower, radiationProcess]);
						}
					}
				}
			}
		}
	}

	function fluidEnricherRemoveInputRecipe(map as IIngredient[IItemStack]) {
		for inputItem, inputFluid in map {
			mods.nuclearcraft.dissolver.removeRecipeWithInput([inputItem, inputFluid]);
		}
	}

	function fluidEnricherRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.dissolver.removeRecipeWithOutput([outputFluid]);	
		}
	}

	function fluidEnricherRemoveAll() {
		mods.nuclearcraft.dissolver.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function fluidExtractorAddRecipe(map as double[double][double][IIngredient][IItemStack][IItemStack]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputFluid, array3 in array2 {
					for multiplierTime, array4 in array3 {
						for multiplierPower, radiationProcess in array4 {
							mods.nuclearcraft.extractor.addRecipe([inputItem, outputItem, outputFluid, multiplierTime, multiplierPower, radiationProcess]);
						}
					}
				}
			}
		}
	}

	function fluidExtractorRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.extractor.removeRecipeWithInput([inputItem]);
		}
	}

	function fluidExtractorRemoveOutputRecipe(map as IIngredient[IItemStack]) {
		for outputItem, outputFluid in map {
			mods.nuclearcraft.extractor.removeRecipeWithOutput([outputItem, outputFluid]);
		}
	}

	function fluidExtractorRemoveAll() {
		mods.nuclearcraft.extractor.removeAllRecipes();
	}

////////////////////////////////////////////////////////////////////////////////////////////////

	function centrifugeAddRecipe(map as double[double][double][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for outputFluid2, array3 in array2 {
					for outputFluid3, array4 in array3 {
						for outputFluid4, array5 in array4 {
							for multiplierTime, array6 in array5 {
								for multiplierPower, radiationProcess in array6 {
									mods.nuclearcraft.centrifuge.addRecipe([inputFluid, outputFluid, outputFluid2, outputFluid3, outputFluid4, multiplierTime, multiplierPower, radiationProcess]);
								}
							}
						}
					}
				}
			}
		}
	}

	function centrifugeRemoveInputRecipe(map as IIngredient[IIngredient]) {
		for inputFluid, inputFluid2 in map {
			mods.nuclearcraft.centrifuge.removeRecipeWithInput([inputFluid, inputFluid2]);
		}
	}

	function centrifugeRemoveOutputRecipe(map as IIngredient[IIngredient]) {
		for outputFluid, outputFluid2 in map {
			mods.nuclearcraft.centrifuge.removeRecipeWithOutput([outputFluid, outputFluid2]);	
		}
	}

	function centrifugeRemoveAll() {
		mods.nuclearcraft.centrifuge.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////	

	function rockCrusherAddRecipe(map as double[double][double][IItemStack][IItemStack][IItemStack][IItemStack][IItemStack]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for outputItem2, array3 in array2 {
					for outputItem3, array4 in array3 {
						for multiplierTime, array5 in array4 {
							for multiplierPower, radiationProcess in array5 {
								mods.nuclearcraft.rock_crusher.addRecipe([inputItem, outputItem, outputItem2, outputItem3, multiplierTime, multiplierPower, radiationProcess]);
							}
						}
					}
				}
			}
		}
	}

	function rockCrusherRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.rock_crusher.removeRecipeWithInput([inputItem]);
		}
	}

	function rockCrusherRemoveOutputRecipe(map as IItemStack[IItemStack][IItemStack]) {
		for outputItem, array1 in map {
			for outputItem2, outputItem3 in array1 {
				mods.nuclearcraft.rock_crusher.removeRecipeWithOutput([outputItem, outputItem2, outputItem3]);
			}
		}
	}

	function rockCrusherRemoveAll() {
		mods.nuclearcraft.rock_crusher.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////

	function decayGeneratorAddRecipe(map as double[double][double][IItemStack][IItemStack]) {
		for outputItem, array1 in map {
			for inputItem, array2 in array1 {
				for tickDuration, array3 in array2 {
					for energyPerSecond, radiationProcess in array3 {
						mods.nuclearcraft.decay_generator.addRecipe([inputItem, outputItem, tickDuration, energyPerSecond, radiationProcess]);
					}
				}
			}
		}
	}

	function decayGeneratorRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.decay_generator.removeRecipeWithInput([inputItem]);
		}
	}

	function decayGeneratorRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.decay_generator.removeRecipeWithOutput([outputItem]);
		}
	}

	function decayGeneratorRemoveAll() {
		mods.nuclearcraft.decay_generator.removeAllRecipes();
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////

	function fissionAddRecipe(map as string[double][double][double][double][IItemStack][IItemStack]) {
		for inputItem, array1 in map {
			for outputItem, array2 in array1 {
				for baseTime, array3 in array2 {
					for basePower, array4 in array3 {
						for baseHeat, array5 in array4 {
							for radiationProcess, guiName in array5 {
								mods.nuclearcraft.fission.addRecipe([inputItem, outputItem, baseTime, basePower, baseHeat, guiName, radiationProcess]);
							}
						}
					}
				}
			}
		}
	}

	function fissionRemoveInputRecipe(map as IItemStack[]) {
		for inputItem in map {
			mods.nuclearcraft.fission.removeRecipeWithInput([inputItem]);
		}
	}

	function fissionRemoveOutputRecipe(map as IItemStack[]) {
		for outputItem in map {
			mods.nuclearcraft.fission.removeRecipeWithOutput([outputItem]);
		}
	}

	function fissionRemoveAll() {
		mods.nuclearcraft.fission.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////

	function fusionAddRecipe(map as double[double][double][double][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for inputFluid2, array2 in array1 {
				for outputFluid, array3 in array2 {
					for outputFluid2, array4 in array3 {
						for outputFluid3, array5 in array4 {
							for outputFluid4, array6 in array5 {
								for baseTime, array7 in array6 {
									for basePower, array8 in array7 {
										for baseHeat, radiationProcess in array8 {
											mods.nuclearcraft.fusion.addRecipe([inputFluid, inputFluid2, outputFluid, outputFluid2, outputFluid3, outputFluid4, baseTime, basePower, baseHeat, radiationProcess]);
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

	function fusionRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.fusion.removeRecipeWithInput([inputFluid]);
		}
	}

	function fusionRemoveOutputRecipe(map as IIngredient[IIngredient][IIngredient][IIngredient]) {
		for outputFluid, array1 in map {
			for outputFluid2, array2 in array1 {
				for outputFluid3, outputFluid4 in array2 {
					mods.nuclearcraft.fusion.removeRecipeWithOutput([outputFluid, outputFluid2, outputFluid3, outputFluid4]);
				}
			}
		}
	}

	function fusionRemoveAll() {
		mods.nuclearcraft.fusion.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function saltFissionAddRecipe(map as double[double][double][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for baseTime, array3 in array2 {
					for basePower, radiationProcess in array3 {
						mods.nuclearcraft.salt_fission.addRecipe([inputFluid, outputFluid, baseTime, basePower, radiationProcess]);
					}
				}
			}
		}
	}

	function saltFissionRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.salt_fission.removeRecipeWithInput([inputFluid]);
		}
	}

	function saltFissionRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.salt_fission.removeRecipeWithOutput([outputFluid]);
		}
	}

	function saltFissionRemoveAll() {
		mods.nuclearcraft.salt_fission.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function heatExchangerAddRecipe(map as int[int][double][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for requiredHeat, array3 in array2 {
					for tempIn, tempOut in array3 {
						mods.nuclearcraft.heat_exchanger.addRecipe([inputFluid, outputFluid, requiredHeat, tempIn, tempOut]);
					}
				}
			}
		}
	}

	function heatExchangerRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.heat_exchanger.removeRecipeWithInput([inputFluid]);
		}
	}

	function heatExchangerRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.heat_exchanger.removeRecipeWithOutput([outputFluid]);
		}
	}

	function heatExchangerRemoveAll() {
		mods.nuclearcraft.heat_exchanger.removeAllRecipes();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////

	function steamTurbineAddRecipe(map as int[int][double][IIngredient][IIngredient]) {
		for inputFluid, array1 in map {
			for outputFluid, array2 in array1 {
				for requiredHeat, array3 in array2 {
					for tempIn, tempOut in array3 {
						mods.nuclearcraft.turbine.addRecipe([inputFluid, outputFluid, requiredHeat, tempIn, tempOut]);
					}
				}
			}
		}
	}

	function steamTurbineRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.turbine.removeRecipeWithInput([inputFluid]);
		}
	}

	function steamTurbineRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.turbine.removeRecipeWithOutput([outputFluid]);
		}
	}

	function steamTurbineRemoveAll() {
		mods.nuclearcraft.turbine.removeAllRecipes();
	}


///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function condenserAddRecipe(map as double[IIngredient][IIngredient]) {
		for outputFluid, array1 in map {
			for inputFluid, multiplierTime in array1 {
				mods.nuclearcraft.condenser.addRecipe([inputFluid, outputFluid, multiplierTime]);		
			}
		}
	}

	function condenserRemoveInputRecipe(map as IIngredient[]) {
		for inputFluid in map {
			mods.nuclearcraft.condenser.removeRecipeWithInput([inputFluid]);
		}
	}

	function condenserRemoveOutputRecipe(map as IIngredient[]) {
		for outputFluid in map {
			mods.nuclearcraft.condenser.removeRecipeWithOutput([outputFluid]);
		}
	}

	function condenserRemoveAll() {
		mods.nuclearcraft.condenser.removeAllRecipes();
	}

///////////////////////////////////////////////////////////////////////////////////////////////////////////

	function removeAllRecipes() {
		if (!dev) {
			manufactoryRemoveAll();
			isotopeRemoveAll();
			decayHastenerRemoveAll();
			fuelReprocessorRemoveAll();
			alloyFurnaceRemoveAll();
			infuserRemoveAll();
			melterRemoveAll();
			supercoolerRemoveAll();
			electrolyserRemoveAll();
			irradiatorRemoveAll();
			ingotFormerRemoveAll();
			pressurizerRemoveAll();
			chemicalReactorRemoveAll();
			saltMixerRemoveAll();
			crystallizerRemoveAll();
			fluidEnricherRemoveAll();
			fluidExtractorRemoveAll();
			centrifugeRemoveAll();
			rockCrusherRemoveAll();
			decayGeneratorRemoveAll();
			fissionRemoveAll();
			fusionRemoveAll();
			saltFissionRemoveAll();
			heatExchangerRemoveAll();
			steamTurbineRemoveAll();
			condenserRemoveAll();
		}
	}
}