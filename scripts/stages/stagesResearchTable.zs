import crafttweaker.item.IItemStack;
import mods.ResearchTable;
import mods.zenstages.Stage;

import scripts.stages.register.gameModeAbnormal;
import scripts.stages.register.gameModeGenius;
import scripts.stages.register.gameModeKitchenSink;

import scripts.stages.register.stageProfessionsStage1;
import scripts.stages.register.stageProfessionsStage2;
import scripts.stages.register.stageProfessionsStage3;
import scripts.stages.register.stageProfessionsStage4;
import scripts.stages.register.stageProfessionsStage5;

import scripts.stages.register.stageOxygen1;
import scripts.stages.register.stageResources1;
import scripts.stages.register.stageRocketBuilder;
import scripts.stages.register.stageOxygenExtractor;
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDecoration1Enable;
import scripts.stages.register.stageDecoration1Disable;

static allStages as string[][] = [
	[	//0
		stageResources1.stage,
		stageRocketBuilder.stage,
	],
	[	//1
		stageProfessionsStage1.stage,
		stageDecorator.stage,
		stageFarmer1.stage,
		stageMoldMaker.stage,
		stageAstronomer.stage
	],
	[	//2
		stageProfessionsStage2.stage,
		stageBlackSmith.stage
	],
	[	//3
		stageProfessionsStage3.stage,
		stageNuclearPhysicist.stage
	],
	[	//4
		stageProfessionsStage4.stage
	],
	[	//5
		stageProfessionsStage5.stage
	]
];

static addResearchAbnormal as int[string[][]][int][string[]][string[]][string][IItemStack][string] = {
	"Professions - Stage: 1": {<minecraft:flint_and_steel:0>: { 
		"Learn about the basics of automation, new materials and faster machinery. This research will also unlock more professions like, Decorator, Farmer, Mold Maker and Astronomer": {
			[allStages[0][0]]: {[stageProfessionsStage1.stage]: {
				1: { 
					[[allStages[0][0]]]: 1
				}}}}}
	},
	"Professions - Stage: 2": {<extrautils2:machine:0>.withTag({Type: "extrautils2:generator_culinary"}): { 
		"WIP": {
			[allStages[1][0]]: {[stageProfessionsStage2.stage]: {
				2: { 
					[[allStages[0][1]], allStages[1]]: 2
			}}}}}
	},
	"Professions - Stage: 3": {<nuclearcraft:decay_generator:0>: { 
		"WIP2": {
			[allStages[2][0]]: {[stageProfessionsStage3.stage]: {
				3: { 
					[[allStages[0][1]]]: 3
			}}}}}
	},
	"Professions - Stage: 4": {<matteroverdrive:gravitational_anomaly:0>: { 
		"WIP3": {
			[allStages[3][0]]: {[stageProfessionsStage4.stage]: {
				4: { 
					[[allStages[0][1]]]: 4
			}}}}}
	},
	"Professions - Stage: 5": {<thermaldynamics:duct_0:5>: { 
		"WIP4": {
			[allStages[4][0]]: {[stageProfessionsStage5.stage]: {
				5: { 
					[[allStages[0][1]]]: 5
			}}}}}
	}

};

static addResearchGenius as string[][string[]][string][IItemStack][string] = {
	"Professions - Stage: 1": {<minecraft:flint_and_steel:0>: {
		"Learn about the basics of automation, new materials and faster machinery. This research will also unlock more professions like, Decorator, Farmer, Mold Maker and Astronomer.": {
			[allStages[0][0]]: [stageProfessionsStage1.stage]}}
	},
	

	"Professions - Stage: 2": {<extrautils2:machine:0>.withTag({Type: "extrautils2:generator_culinary"}): {
		"": {
			allStages[1]: [stageProfessionsStage2.stage]
		}}
	},


	"Professions - Stage: 3": {<nuclearcraft:decay_generator:0>: {
		"": {	
			allStages[2]: [stageProfessionsStage3.stage]}}
	},


	"Professions - Stage: 4": {<matteroverdrive:gravitational_anomaly:0>: {
		"": { 
			allStages[3]: [stageProfessionsStage4.stage]}}
	},


	"Professions - Stage: 5": {<thermaldynamics:duct_0:5>: {
		"": {
			allStages[4]: [stageProfessionsStage5.stage]}} 
	},
};

static addResearchToggles as string[string[]][string][IItemStack][string] = {
	"Decorational Blocks - Enable": {<chisel:chisel_iron:0>: {
		"Enable decorational blocks to be visible in JEI.": {
			[stageDecoration1Disable.stage, stageDecorator.stage]: stageDecoration1Enable.stage}}
	},
	"Decorational Blocks - Disable": {<chisel:chisel_iron:0>: {
		"Disable decorational blocks to be visible in JEI.": {
			[stageDecoration1Enable.stage, stageDecorator.stage]: stageDecoration1Disable.stage}}
	},
};


function init() {
	ResearchTable.scoreIndicator("Research Points: %d", "researchPoints");
	researchTable.addResearchScore(addResearchAbnormal);
	researchTable.addResearch(addResearchGenius, [gameModeGenius.stage] as string[]);
	researchTable.addResearch(allStages);
	researchTable.addResearchToggles(addResearchToggles, [gameModeAbnormal.stage, gameModeGenius.stage, gameModeKitchenSink.stage] as string[]);
}