// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // Controller
global.__objectDepths[1] = 0; // InvisibleWall
global.__objectDepths[2] = 0; // ClickableButton
global.__objectDepths[3] = 0; // Tower
global.__objectDepths[4] = 0; // TowerOfFire
global.__objectDepths[5] = 0; // TowerFast
global.__objectDepths[6] = 0; // TowerSlow
global.__objectDepths[7] = 0; // Bullet
global.__objectDepths[8] = 0; // BulletFire
global.__objectDepths[9] = 0; // Enemy
global.__objectDepths[10] = 0; // EnemyBoss
global.__objectDepths[11] = 0; // EnemyImmuneToFire
global.__objectDepths[12] = 0; // EnemyFast
global.__objectDepths[13] = 0; // EnemySlow


global.__objectNames[0] = "Controller";
global.__objectNames[1] = "InvisibleWall";
global.__objectNames[2] = "ClickableButton";
global.__objectNames[3] = "Tower";
global.__objectNames[4] = "TowerOfFire";
global.__objectNames[5] = "TowerFast";
global.__objectNames[6] = "TowerSlow";
global.__objectNames[7] = "Bullet";
global.__objectNames[8] = "BulletFire";
global.__objectNames[9] = "Enemy";
global.__objectNames[10] = "EnemyBoss";
global.__objectNames[11] = "EnemyImmuneToFire";
global.__objectNames[12] = "EnemyFast";
global.__objectNames[13] = "EnemySlow";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for