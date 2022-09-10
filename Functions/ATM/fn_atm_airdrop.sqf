///////////////////////////////////////////////////////////
//                =ATM= Airdrop       	 				    //
//         		 =ATM=Pokertour        		       		    //
//				version : 6.5						        //
//				date : 28/12/2015						   //
//                   visit us : atmarma.fr                 //
/////////////////////////////////////////////////////////

private ["_position","_cut","_dialog","_s_alt","_s_alt_text","_sound","_sound2","_soundPath"];
waitUntil { !isNull player };

_position = GetPos player;
_z = _position select 2;
_ledepacement = missionNameSpace getVariable "ledepacement";
if (_ledepacement == 1) exitwith {
	systemChat "Halo Jump Not Available While Holding an Object.";
	breakOut "main";
};
openMap true;
[toUpper localize "STR_ATM_hinton"] spawn BIS_fnc_WLSmoothText; 
playSound "destinations";

ATM_Jump_mapclick = false;
onMapSingleClick "ATM_Jump_clickpos = _pos; ATM_Jump_mapclick = true; onMapSingleClick ''; true;";
waitUntil {ATM_Jump_mapclick or !(visiblemap)};
if (!visibleMap) exitwith {
	systemChat "Halo jump canceled.";
	breakOut "main";
};
_pos = ATM_Jump_clickpos;
ATM_Jump_mapclick = if(true) then{
	call compile format ['
		mkr_halo = createmarker ["mkr_halo", ATM_Jump_Clickpos];
		"mkr_halo" setMarkerTypeLocal "hd_dot";
		"mkr_halo" setMarkerColorLocal "ColorGreen";
		"mkr_halo" setMarkerTextLocal "Jump";'];
};

_target = player;


_loadout=[_target] call ATM_fnc_Getloadout;

_posJump = getMarkerPos "mkr_halo";
_x = _posJump select 0;
_y = _posJump select 1;
_z = _posJump select 2;
_target setPos [_x,_y,_z+(missionNameSpace getVariable "LAltitude")];

openMap false;
deleteMarker "mkr_halo";

0=[_target] call ATM_fnc_Frontpack;

removeBackpack _target;
sleep 0.5;
_target addBackpack "B_Parachute";
if ((getPos _target select 2) >= 8000) then{
	removeHeadgear _target;
	_target addHeadgear "H_CrewHelmetHeli_B";
	sleep 0.5;
};

_thecounter = 0;

while {(getPos _target select 2) > 2} do {
	
	sleep 5;
	if (animationState player == "para_pilot") then {
		deletevehicle (_target getvariable "frontpack"); _target setvariable ["frontpack",nil,true];
		sleep 0.5;
		0=[_target,_loadout] call ATM_fnc_Setloadout;
		_thecounter = 1;
	};
};

if (_thecounter == 0) exitWith {0=[_target,_loadout] call ATM_fnc_Setloadout;};