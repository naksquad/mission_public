/*
Author:

	Quiksilver

Description:

	Object is teleported to side mission location
	addAction on object executes this script
	when script is done, spawn explosion and teleport object away

	Modified for simplicity and other applications (non-destroy missions).
	BIS_fnc_MP/BIS_fnc_spawn/BIS_fnc_timetostring are all performance hogs.

To do:

	Needs re-framing for 'talk to contact' type missions [DONE]

	This code is now just a variable switch, to be sent back in order that the mission script can continue.

	Does it allow for possibility of failure? I dont know, too tired at the moment.

_______________________________________________________*/

/*

_object = _this # 0;
_actUsed = _this # 1;  	// Unit that used the Action (also _this in the addAction command)
_actID = _this # 2;  		// ID of the Action

*/

//-------------------- Send hint to player that he's done something...

//[[player,"AinvPercMstpSrasWrflDnon_Putdown_AmovPercMstpSrasWrflDnon"],"AW_fnc_switchMoveMP",nil,false] spawn BIS_fnc_MP;
_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;

hint "Receiving data...";

sleep 1;

hint "Verifying...";

sleep 1;

//---------- Send notice to all players that something has been done.

[] remoteExec ["NAK_fnc_smSucSwitch",0];
[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 
