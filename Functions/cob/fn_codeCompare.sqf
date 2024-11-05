private ["_code", "_LEINPUTCODE", "_jesusjetaime", "_missionData", "_taskStatus"];

_missionData = missionNamespace getVariable "aoBombHqMissionObj";
_code = missionNamespace getVariable "LECODE";
_LEINPUTCODE = missionNamespace getVariable "LEINPUTCODE";

if (_code isEqualTo _LEINPUTCODE) then {
	playSound "button_close";
	["TaskSucceeded", ["", format ["Good Job Disarming the Bomb"]]] remoteExec ["BIS_fnc_showNotification", west];
	_taskStatus = true;
} else {
	["TaskFailed", ["", format ["BOMB ARMED Runnnnnnnnnnnnnnnnnnn...KABOOOOOOOOO!!!!!!"]]] remoteExec ["BIS_fnc_showNotification", west];
	_taskStatus = false;
	playSound "button_wrong";

	"ammo_Missile_Cruise_01" createVehicle getPos (_missionData select 0);
};


[
	(_missionData select 2),
	(_missionData select 3),
	(_missionData select 4),
	(_missionData select 5),
	(_missionData select 6),
	_taskStatus,
	(_missionData select 8),
	(_missionData select 9)
] remoteExecCall ["AOM_fnc_endAoSmMission", (missionnamespace getVariable "hcNetworkId")];

CODEINPUT = [];
publicVariable "CODEINPUT";

private _scientistMissionData = missionNamespace getVariable "aoScHqMissionObj";
private _leScientist = _scientistMissionData select 0;
private _taskSciStatus = false;

if (alive _leScientist) then {
	deleteVehicle _leScientist;
	[
		(_scientistMissionData select 2),
		(_scientistMissionData select 3),
		(_scientistMissionData select 4),
		(_scientistMissionData select 5),
		(_scientistMissionData select 6),
		_taskSciStatus,
		(_scientistMissionData select 8),
		(_scientistMissionData select 9)
	] remoteExecCall ["AOM_fnc_endAoSmMission", (missionnamespace getVariable "hcNetworkId")];
}