#priority 9000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.formatting.IFormattedText;

zenClass tooltipGen {
	zenConstructor() {}

	/*
	--------------------------------------------------------
	If you want different materials add or change them here.
	--------------------------------------------------------
	*/
	function oredictMaterial(oredictName as IOreDictEntry) as string {
		if (oredictName.name in "Aluminum") {
			return "Aluminum";
		}
		if (oredictName.name in "Bronze") {
			return "Bronze";
		}
		if (oredictName.name in "Copper") {
			return "Copper";
		}
		if (oredictName.name in "Iron") {
			return "Iron";
		}
		if (oredictName.name in "Lead") {
			return "Lead";
		}
		if (oredictName.name in "Nickel") {
			return "Nickel";
		}
		if (oredictName.name in "Steel") {
			return "Steel";
		}
		if (oredictName.name in "Tin") {
			return "Tin";
		}
		
		else {
			return "Invalid Material";
		}
	}

	function materialChecker(inputMaterial as string) as string {
		var material = capitalize(inputMaterial);
		
		if (material == "Aluminum" | material == "Bronze" | material == "Copper" | material == "Iron" | material == "Lead" | material == "Nickel" | material == "Steel" | material == "Tin") {
			
			return material;
		}
		
		else {
			return "ERROR, Wrong Material!!!";
		}
	}
	
	/*
	------------------------------
	Automation of tiered tooltips.
	------------------------------

	---------------------------------------
	Select which purity for specified tier.
	---------------------------------------
	*/
	function purityTier(tier as int) as string {
		if (tier == 1) {
			return "8%"; 
		}
		if (tier == 2) {
			return "23%"; 
		}
		if (tier == 3) {
			return "47.5%"; 
		}
		if (tier == 4) {
			return "78%"; 
		}
		if (tier == 5) {
			return "98.7%"; 
		}
		
		else {
			return "ERROR, Wrong Tier!!!";
		}	
	}

	/*
	---------------------------------------------
	Select which carbon level for specified tier.
	---------------------------------------------
	*/
	function carbonTier(tier as int) as string {
		if (tier == 1) {
			return "0.3%"; 
		}
		if (tier == 2) {
			return "1.6%"; 
		}
		if (tier == 3) {
			return "3.8%"; 
		}
		
		else {
			return "ERROR, Wrong Tier!!!";
		}	
	}	

	/*
	-------------------------------------
	Select which size for specified tier.
	-------------------------------------
	*/
	function sizeTier(tier as int) as string {
		if (tier == 1) {
			return "29.7mm"; 
		}
		if (tier == 2) {
			return "13.1mm"; 
		}
		if (tier == 3) {
			return "2.5mm"; 
		}		
		
		else {
			return "ERROR, Wrong Tier!!!";
		}	
	}


	/*
	------------------------------------------
	Select which thickness for specified tier.
	------------------------------------------
	*/
	function thicknessTier(tier as int) as string {
		if (tier == 1) {
			return "25mm"; 
		}
		if (tier == 2) {
			return "18mm"; 
		}
		if (tier == 3) {
			return "12mm"; 
		}
		if (tier == 4) {
			return "4mm"; 
		}
		if (tier == 5) {
			return "2mm"; 
		}
		else {
			return "ERROR, Wrong Tier!!!";
		}			
	}

	/*
	---------------------------------------
	Select which module for specified tier.
	---------------------------------------
	*/
	function moduleTier(tier as int) as string {
		if (tier == 1) {
			return "32"; 
		}
		if (tier == 2) {
			return "25"; 
		}
		if (tier == 3) {
			return "16"; 
		}
		if (tier == 4) {
			return "8"; 
		}
		if (tier == 5) {
			return "4"; 
		}
		else {
			return "ERROR, Wrong Tier!!!";
		}		
	}

	/*
	-----------------------------------------
	Select which sizeName for specified tier.
	-----------------------------------------
	*/
	function sizeNameTier(tier as int) as string {
		if (tier == 1) {
			return "Enormous"; 
		}
		if (tier == 2) {
			return "Minuscule"; 
		}
		else {
			return "ERROR, Wrong Tier!!!";
		}		
	}			

	/*
	------------------------------------------
	Select which filthName for specified tier.
	------------------------------------------
	*/
	function filthinessTier(tier as int) as string {
		if (tier == 1) {
			return "Dirty"; 
		}
		if (tier == 2) {
			return "Pure"; 
		}
		else {
			return "ERROR, Wrong Tier!!!";
		}		
	}			

	/*
	-------------------------------------
	Which function to call for inputPart.
	-------------------------------------
	*/
	function tierDescription(material as string, part as string, tier as int) as string {
		if (part == "Block" | part == "Ingot") {
			if (material == "Steel") {
				return carbonTier(tier);
			}

			else {
				return purityTier(tier);
			}
		}
		if (part == "Nugget") {
			return sizeTier(tier);
		}
		if (part == "Plate") {
			return thicknessTier(tier);
		}
		if (part == "Gear") {
			return moduleTier(tier);
		}
		if (part == "Clump") {
			return sizeNameTier(tier);
		}
		if (part == "Dust") {
			return filthinessTier(tier);
		}
	}

	/*
	------------------
	Property per part.
	------------------
	*/
	function partDescription(part as string, material as string) as string {
		if (part == "Block") {
			if (material == "Steel") {
				return "Carbon level";
			}
			
			else {
				return "Purity";
			}
		}
		if (part == "Ingot") {
			return "Purity";
		}
		if (part == "Nugget") {
			return "Size";
		}
		if (part == "Plate") {
			return "Thickness";
		}
		if (part == "Gear") {
			return "Module";
		}
		if (part == "Clump") {
			return "Size";
		}
		if (part == "Dust") {
			return "Cleanness";
		}
	}

	/*
	-----------------------
	Description generation.
	-----------------------
	*/
	function itemNameString(material as string, part as string, tier as int) as string {
		var partDesc as string = partDescription(part, material);
		var tierDesc as string = tierDescription(material, part, tier);

		val itemNameString as string = material ~ " " ~ part ~ " - " ~ partDesc ~ ": (" ~ tierDesc ~ ")";
		return itemNameString;
	}

	function itemDescriptionFormatted(material as string, part as string, tier as int) as IFormattedText[] {
		val DPart as string = decapitalize(part);
		val CArticle as string = capitalize(iArticleGen(DPart));
		val DMaterial as string = decapitalize(material);
		val DPartDesc as string = decapitalize(partDescription(part, material));
		
		if (part == "Clump") {
			val itemDescriptionFormatted as IFormattedText[] = [
				format.gray(CArticle ~ " " ~ DPart ~ " of " ~ DMaterial ~ " with a " ~ decapitalize(tierDescription(material, part, tier)) ~ " " ~ DPartDesc),
				format.yellow("Tier " ~ tier)
			];
			return itemDescriptionFormatted;
		}
		if (part == "Dust") {
			val itemDescriptionFormatted as IFormattedText[] = [
				format.gray(CArticle ~ " " ~ decapitalize(tierDescription(material, part, tier)) ~ " piece of " ~ DMaterial ~ " " ~ DPart),
				format.yellow("Tier " ~ tier)
			];
			return itemDescriptionFormatted;
		}
		else {
			val itemDescriptionFormatted as IFormattedText[] = [
				format.gray(CArticle ~ " " ~ DPart ~ " of " ~ DMaterial ~ " with a " ~ DPartDesc ~ " of " ~ tierDescription(material, part, tier)),
				format.yellow("Tier " ~ tier)
			];
			return itemDescriptionFormatted;
		}
	}
	
	function itemShiftDescriptionFormatted(tier as int) as IFormattedText[] {
		val itemShiftDescriptionFormatted as IFormattedText[] = [
			format.white("You can use this item in recipes with a tier " ~ tier ~ " ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
		];
		return itemShiftDescriptionFormatted;
	}

	/*
	----------------------------------------
	Generation of the tiered tooltip itself.	
	----------------------------------------
	*/
	function tieredTooltip(inputMaterial as string, inputPart as string, tier as int) as IFormattedText[][IFormattedText[]][string] {
		var material = materialChecker(inputMaterial);
		var part = partChecker(inputPart);

		val tieredTooltip as IFormattedText[][IFormattedText[]][string] = {
			itemNameString(material, part, tier): {
				itemDescriptionFormatted(material, part, tier): itemShiftDescriptionFormatted(tier)
			}
		};	
		return tieredTooltip;
	}

	function partChecker(inputpart as string) as string {
		var part = capitalize(inputpart);
		
		if (part == "Block" | part == "Clump" | part == "Dust" | part == "Gear" | part == "Ingot" | part == "Nugget" | part == "Plate") {
			return part;
		}
		
		else {
			return "ERROR, Wrong Part!!!";
		}	
	}

	function oredictPart(oredictName as IOreDictEntry) as string {
		if (oredictName.name in "block") {
			return "Block";
		}
		if (oredictName.name in "ingot") {
			return "Ingot";
		}
		if (oredictName.name in "nugget") {
			return "Nugget";
		}
		if (oredictName.name in "gear") {
			return "Gear";
		}
		if (oredictName.name in "plate") {
			return "Plate";
		}
		if (oredictName.name in "clump") {
			return "Clump";
		}
		if (oredictName.name in "dust") {
			return "Dust";
		}
		
		else {
			return "Invalid Part";
		}
	}

	function oredictTier(oredictName as IOreDictEntry) as int {
		if (oredictName.name in "Tier1") {
			return 1;
		}
		if (oredictName.name in "Tier2") {
			return 2;
		}
		if (oredictName.name in "Tier3") {
			return 3;
		}
		if (oredictName.name in "Tier4") {
			return 4;
		}
		if (oredictName.name in "Tier5") {
			return 5;
		}
		
		else {
			return 0;
		}
	}

	function setTooltipAndName(map as IFormattedText[][IFormattedText[]][string], item as IItemStack, setName as bool, extraFormattedTooltips as IFormattedText[]) {
		item.clearTooltip();
			for itemName, toolTipArray in map {
				if (setName) {
					item.displayName = itemName;
				}
				item.addTooltip(format.white(itemName));
	
				for toolTipStandardArray, toolTipShiftArray in toolTipArray {
					for toolTipStandard in toolTipStandardArray {
						item.addTooltip(toolTipStandard);
					}
					
					if (!isNull(extraFormattedTooltips)) {
						for extraTooltip in extraFormattedTooltips {
							item.addTooltip(extraTooltip);
						}
					}

					if !isNull(scripts.recipes.integrations.skyResources.catalysts.catalystAdd[item]) {
						item.addTooltip(format.aqua("Catalyst Yield: " + scripts.recipes.integrations.skyResources.catalysts.catalystAdd[item] * 100 + "%"));
					}
					
					if (!isNull(toolTipShiftArray)) {
						item.addTooltip(format.white("Hold: ") + format.blue(format.italic("LShift ")) + format.white("for more information"));
					}
	
					for toolTipShift in toolTipShiftArray {
						item.addShiftTooltip(toolTipShift);
					}
				}
			}
	
		if (dev) {
			item.addTooltip(format.darkGray(item.definition.id ~ ":" ~ item.metadata));
			if(item.definition.owner != "thermalfoundation" & item.definition.owner != "tconstruct") {
				for oredict in item.ores {
					item.addTooltip(format.gray(oredict.name));
				}
			}
		}
	}

	function setTooltipAndUnlocalizedName(map as IFormattedText[][IFormattedText[]][string], item as IItemStack, unlocalizedName as string, extraFormattedTooltips as IFormattedText[]) {
		item.clearTooltip();
			for itemName, toolTipArray in map {
				game.setLocalization(itemName, unlocalizedName);
				item.addTooltip(format.white(itemName));
	
				for toolTipStandardArray, toolTipShiftArray in toolTipArray {
					for toolTipStandard in toolTipStandardArray {
						item.addTooltip(toolTipStandard);
					}
	
					if (!isNull(extraFormattedTooltips)) {
						for extraTooltip in extraFormattedTooltips {
							item.addTooltip(extraTooltip);
						}
					}

					if !isNull(scripts.recipes.integrations.skyResources.catalysts.catalystAdd[item]) {
						item.addTooltip(format.aqua("Catalyst Yield: " + scripts.recipes.integrations.skyResources.catalysts.catalystAdd[item] * 100 + "%"));
					}

					if (!isNull(toolTipShiftArray)) {
						item.addTooltip(format.white("Hold: ") + format.blue(format.italic("LShift ")) + format.white("for more information"));
					}
	
					for toolTipShift in toolTipShiftArray {
						item.addShiftTooltip(toolTipShift);
					}
				}
			}
	
		if (dev) {
			item.addTooltip(format.darkGray(item.definition.id ~ ":" ~ item.metadata));
			if(item.definition.owner != "thermalfoundation" & item.definition.owner != "tconstruct") {
				for oredict in item.ores {
					item.addTooltip(format.gray(oredict.name));
				}
			}
		}
	}
	
	/*
	-----------------------------------------------
	These mods don't do item.displayName = newName,
	but still sets the tooltip,
	-----------------------------------------------
	*/
	function blacklistedMods(item as IItemStack) as bool {
		val blacklistedMods as string[] = [
			"libvulpes",
			"tconstruct"
		];
		
		for blacklistedMod in blacklistedMods {
			if (item.definition.owner in blacklistedMod) {
				return true;
			}

			else {
				return false;
			}
		}
	}

	/*
	----------------------------------------------------------
	These mods get their name by setting the unlocalized name.	
	----------------------------------------------------------
	*/
	function unlocalizedNameMods(item as IItemStack) as bool {
		val allowed as string[] = [
			"thermalfoundation"
		];
		
		for blacklistedMod in allowed {
			if (item.definition.owner in blacklistedMod) {
				return true;
			}

			else {
				return false;
			}
		}
	}

	/*
	-------------------------------------------
	Functions that should be in CT2 by default.
	-------------------------------------------
	*/
	function capitalize(inputString as string) as string {
		if (inputString.isEmpty) {
			return "";
		}
		
		else {
			return inputString[0].toUpperCase ~ inputString.substring(1,inputString.length);
		}
	}

	function decapitalize(inputString as string) as string {
		if (inputString.isEmpty) {
			return "";
		}
		
		else {
			return inputString[0].toLowerCase ~ inputString.substring(1,inputString.length);
		}
	}

	function iArticleGen(inputWord as string) as string {	
		val genAnLetter as string[] = [
		// Check these starting letters and generate an "an"
			"a",
			"e",
			"i",
			"o",
			"u",
		];

		val exceptionsA as string[] = [
		// Generate an "a" for these words
		];

		val exceptionsAn as string[] = [
		// Generate an "an" for these words
		];

		for word in exceptionsA {
			if (inputWord in word) {
				return "a";
			}
		}
		
		for word2 in exceptionsAn {
			if (inputWord in word2) {
				return "an";
			}
		}
		
		for letter in genAnLetter {
			if (genAnLetter in inputWord[0]) {
				return "an";
			}
		}

		return "a";
	}
	
	/*
	--------------------------------------
	Set the tooltip based on oredict info.	
	--------------------------------------
	*/
	function oredictIterator(map as IItemStack[][IOreDictEntry], unlocalizedName as string[IItemStack], extraTooltip as IFormattedText[][IItemStack]) {
		for oredictName, itemArray in map {
			val inputMaterial = oredictMaterial(oredictName);
			val inputPart = oredictPart(oredictName);

			val material = materialChecker(inputMaterial);
			val part = partChecker(inputPart);
			val tier = oredictTier(oredictName);

			val tooltip = tieredTooltip(material, part, tier);
			for item in itemArray {	
				if (!blacklistedMods(item) & !(unlocalizedNameMods(item))) {
					val extraFormattedTooltips as IFormattedText[] = extraTooltip[item];

					print("----------------------- Tiered Tooltip Generation With Name For Item: <" ~ item.definition.id ~ "> -----------------------");
					setTooltipAndName(tooltip, item, true, extraFormattedTooltips);
				}
				if (blacklistedMods(item)) {
					val extraFormattedTooltips as IFormattedText[] = extraTooltip[item];

					print("----------------------- Tiered Tooltip Generation For Item: <" ~ item.definition.id ~ "> -----------------------");
					setTooltipAndName(tooltip, item, false, extraFormattedTooltips);
				}
				if (unlocalizedNameMods(item)) {
					val extraFormattedTooltips as IFormattedText[] = extraTooltip[item];
					
					print("----------------------- Tiered Tooltip Generation For Unlocalized Item: <" ~ item.definition.id ~ "> -----------------------");
					setTooltipAndUnlocalizedName(tooltip, item, unlocalizedName[item], extraFormattedTooltips);
				}
			}
		}
	}

}