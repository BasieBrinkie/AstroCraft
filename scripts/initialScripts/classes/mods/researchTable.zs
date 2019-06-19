#priority 9500
#modloaded researchtable
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
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
import scripts.stages.register.stageDecorator;
import scripts.stages.register.stageFarmer1;
import scripts.stages.register.stageMoldMaker;
import scripts.stages.register.stageAstronomer;
import scripts.stages.register.stageBlackSmith;
import scripts.stages.register.stageNuclearPhysicist;

import scripts.stages.register.stageDecorationEnable;
import scripts.stages.register.stageDecorationDisable;

zenClass researchTable {
    
  zenConstructor() {
  }

  function addResearch(map as string[][string[]][string][IItemStack][string], gamemodeStageArray as string[]) {
    for gamemodeStage in gamemodeStageArray {
      for name, array in map {
        for icon, array2 in array {
          for description, array3 in array2 {
            for requiredStagesArray, rewardStagesArray in array3 {
              var requiredStages as string[] = [gamemodeStage];
              for requiredStage in requiredStagesArray {
                requiredStages += requiredStage;
              }  
              var category = ResearchTable.addCategory(icon);
              ResearchTable.builder("research " ~ name, category)
                .setIcons(icon)
                .setTitle(name)
                .setDescription(description)
                .setRewardCommands("/say @s unlocked the research for ' " ~ name ~ " '")
                .setRequiredStages(requiredStages)
                .setRewardStages(rewardStagesArray)
                .setMaxCount(1)
                .build();
            }
          }
        }
      }
    }
  }

  function addResearchScore(map as int[string[][]][int][string[]][string[]][string][IItemStack][string]) {
    for name, array in map {
      for icon, array2 in array {
        for description, array3 in array2 {
          for requiredStagesArray, array4 in array3 {
            for rewardStagesArray, array5 in array4 {
              var requiredStages as string[] = [gameModeAbnormal.stage];
              for requiredStage in requiredStagesArray {
                requiredStages += requiredStage;
              }
              for rPoints, array6 in array5 {
                for optionalStagesArray, minStages in array6 {
                  var optionalStages as string[] = [];
                  for i, optionalStagesArray2 in optionalStagesArray {
                    for optionalStage in optionalStagesArray2 {
                      optionalStages += optionalStage;
                    }
                  }
                  var category = ResearchTable.addCategory(icon);
                  ResearchTable.builder("research " ~ name, category)
                    .setIcons(icon)
                    .setTitle(name)
                    .setDescription("This research costs: " ~ rPoints ~ " Research Points. " ~ description)
                    .setRequiredScore("researchPoints", "You need more researchPoints: " ~ rPoints, rPoints, 2147483647)
                    .setRewardCommands("/say @s unlocked the research for ' " ~ name ~ " '")
                    .setTriggerCommands("/scoreboard players remove @s researchPoints " ~ rPoints)
                    .setOptionalStages(minStages, optionalStages)
                    .setRequiredStages(requiredStages)
                    .setRewardStages(rewardStagesArray)
                    .setMaxCount(1)
                    .build();
                }
              }    
            }
          }
        }
      }
    }
  }

  function addResearchToggles(map as string[string[]][string][IItemStack][string], gamemodeStageArray as string[]) {
    for gamemodeStage in gamemodeStageArray {
      for name, array in map {
        for icon, array2 in array {
          for description, array3 in array2 {
            for requiredStagesArray, rewardStage in array3 {
              var requiredStages as string[] = [gamemodeStage];
              for requiredStage in requiredStagesArray {
                requiredStages += requiredStage;
              }
              var category = ResearchTable.addCategory(icon);
              ResearchTable.builder("research " ~ name, category)
                .setIcons(icon)
                .setTitle(name)
                .setDescription(description)
                .setRewardCommands("/tell @s toggled '" ~ name ~ " '", "/gamestage silentremove @p " ~ requiredStages[1])
                .setNoMaxCount()
                .setRequiredStages(requiredStages)
                .setRewardStages(rewardStage)
                .build();
            }
          }
        }
      }
    }
  }

  function addResearch(map as string[][]) {
    var rewardStages as string[] = [];
    for i, rewardStagesArray in map {
      for rewardStage in rewardStagesArray {
        rewardStages += rewardStage;
      }
    }
    var category = ResearchTable.addCategory(<props:props:343>);
    ResearchTable.builder("researchKitchenSink", category)
      .setIcons(<props:props:343>)
      .setTitle("Unlock All Research")
      .setDescription("Unlock All Research")
      .setRewardCommands("/tell @s unlocked the research for kitchen-sink mode")
      .setRequiredStages(gameModeKitchenSink.stage)
      .setRewardStages(rewardStages)
      .setMaxCount(1)
      .build();
  }

}