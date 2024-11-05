/*
	@filename: smSwitch.sqf
	Author:
	
	Quiksilver
	
	Description:
	
	Actioning the character triggers mission cycle.
	
_______________________________________________________*/
private _theunitca = _this # 1;

private _uidr = getPlayerUID _theunitca;

if (SM_SWITCH) exitWith {
	hint "No side objective available, please wait."
};

// -------------------- Send hint to player that he's planted the bomb

hint "Side objective available, briefing requested ...";

sleep 1;

[] remoteExec ["NAK_fnc_smSucSwitch", 2];
[_theunitca, _uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false];