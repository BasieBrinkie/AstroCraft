import mods.zenstages.Stage;

import scripts.stages.register.stageChickens1;

static stageEntities as string[][string] = {
stageChickens1.stage: [
	"chickens:chickenschicken",
	"chickens:thown_egg"
	]
};

static stageEntitiesDim as string[][string][int] = {
};


function init() {
	stager.mobSetStage(stageEntities);
	stager.mobSetStageDim(stageEntitiesDim);
}