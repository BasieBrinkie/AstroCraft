#priority 9000

import crafttweaker.item.IItemStack;
import crafttweaker.formatting.IFormattedText;

zenClass tooltipGen {
	zenConstructor() {}


	/*
	-------------------------------------------
	Functions that should be in CT2 by default.
	-------------------------------------------
	*/
	function capitalize(inputString as string) as string {
		if (inputString.isEmpty) {
			return "";
		}
		return inputString[0].toUpperCase ~ inputString.substring(1,inputString.length);
	}

	function decapitalize(inputString as string) as string {
		if (inputString.isEmpty) {
			return "";
		}
		return inputString[0].toLowerCase ~ inputString.substring(1,inputString.length);
	}
	
	
	/*
	------------------------------
	Automation of tiered tooltips.
	------------------------------
	*/
	/*
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
	-------------------------------------
	Select which size for specified tier.
	-------------------------------------
	*/
	function sizeTier(tier as int) as string {
		if (tier == 1) {
			return "29.7mm"; 
		}
		if (tier == 2) {
			return "22.0mm"; 
		}
		if (tier == 3) {
			return "13.1mm"; 
		}
		if (tier == 4) {
			return "8.6mm"; 
		}
		if (tier == 5) {
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
			return "4"; 
		}
		if (tier == 5) {
			return "0.8"; 
		}
		else {
			return "ERROR, Wrong Tier!!!";
		}		
	}	

	/*
	-------------------------------------
	which function to call for inputPart.
	-------------------------------------
	*/
	function tierDescription(inputPart as string, tier as int) {
		var part = capitalize(inputPart);

		if (part == "Block" | part == "Ingot") {
			return purityTier(tier);
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
	}

	/*
	------------------
	Property per part.
	------------------
	*/
	function partDescription(inputPart as string) as string {
		var part = capitalize(inputPart);

		if (part == "Block") {
			return "Purity";
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
	}

	/*
	---------------
	Spelling check.
	---------------
	*/
	function partChecker(inputpart as string) as string {
		var part = capitalize(inputpart);
		
		if (part == "Block" | part == "Ingot" | part == "Nugget" | part == "Plate" | part == "Gear") {
			return part;
		}
		else {
			return "ERROR, Wrong Part!!!";
		}	
	}

	function materialChecker(inputMaterial as string) as string {
		var material = capitalize(inputMaterial);
		
		if (material == "Bronze" | material == "Copper" | material == "Iron" | material == "Lead" | material == "Steel" | material == "Tin") {
			
			return material;
		}
		else {
			return "ERROR, Wrong Material!!!";
		}

	}

	/*
	----------------------------------------
	Generation of the tiered tooltip itself.	
	----------------------------------------
	*/
	function tieredTooltip(part as string, tier as int) as IFormattedText {
		val tieredTooltip as IFormattedText[][IFormattedText[]][string] = {
			"Iron " ~ capitalize(part) ~ " - " ~ partDescription(part) ~ ": " ~ tierDescription(part, tier): {[
				format.gray("A ingot of iron with a " ~ decapitalize(partDescription(part)) ~ " of " ~ tierDescription(part, tier)),
				format.yellow("Tier " ~ tier)]: [				
					format.white("You can use this item in recipes with a tier " ~ tier ~ " ingredient"),
					format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")]
			}
		};	
		return tieredTooltip;
	}
}