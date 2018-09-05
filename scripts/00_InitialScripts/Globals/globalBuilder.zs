/*	------------------------------------------------------------------------- 
	This script will build all Globals so it can be used inside every script.
	-------------------------------------------------------------------------
*/

/*	----------------------------------------------------------
	Add strings of the zenClasses added in the Globals folder.
	----------------------------------------------------------
*/
static globalClasses as string[] = [
	"nbt"
];

function globalBuilder(globalClasses as string[]) {
	for class in globalClasses {
		global globalClasses as scripts.00_InitialScripts.Globals. ~ globalClasses = scripts.00_InitialScripts.Globals. ~ globalClasses ~ . ~ globalClasses ~ ();
	}
}

function init() {
	globalBuilder(globalClasses);
}