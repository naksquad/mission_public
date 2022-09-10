/*
@filename: smSwitch.sqf
Author:

	Quiksilver

Description:

	Actioning the character triggers mission cycle.

_______________________________________________________*/
_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;

if (SM_SWITCH) exitWith {
	hint "No side objective available, please wait."
};

//[player,"AinvPercMstpSrasWrflDnon_Putdown_AmovPercMstpSrasWrflDnon"],"QS_fnc_switchMoveMP",nil,false] spawn BIS_fnc_MP;

//-------------------- Send hint to player that he's planted the bomb

hint "Side objective available, briefing requested ...";

sleep 1;

[] remoteExec ["NAK_fnc_smSucSwitch",2];
[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 

