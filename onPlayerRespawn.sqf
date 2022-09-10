#include "unitDefines.hpp"
player enablestamina false;
player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");
player setUnitRecoilCoefficient (missionNameSpace getVariable "lesniperpour1");
player setUnitLoadout (player getVariable ["Saved_Loadout",[]]);

missionNamespace setVariable ["lespect", 0];
private _msta = selectRandom ["\A3\Data_F_Enoch\Logos\arma3_enoch_logoOver_ca.paa",
"\a3\missions_f_patrol\data\img\CombatPatrol.paa", 
"\A3\Ui_f\data\GUI\Cfg\UnitInsignia\111thID_ca.paa", 
"\A3\Ui_f\data\GUI\Cfg\UnitInsignia\TFAegis_ca.paa", 
"\a3\UI_F_enoch\Data\CfgUnitInsignia\Astra_ca.paa", 
"\a3\UI_F_enoch\Data\CfgUnitInsignia\eaf_5thRegiment_ca.paa", 
"\a3\UI_F_enoch\Data\CfgUnitInsignia\Spetsnaz_ca.paa", 
"\a3\UI_F_Jets\Data\CfgUnitInsignia\jets_patch_01.paa"];

uidd = getPlayerUID player;

 _jeova = ["uav1"]; if !(str player in _jeova) then {player removeWeapon "B_UavTerminal";};
 _jeova1 = ["uav1"]; if (str player in _jeova) then {player addWeapon "B_UavTerminal"; player setUnitTrait ["UAVHacker",true]; player addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}]; };
player spawn VCM_fnc_IRCHECK;
player addRating 1000000;
 missionNamespace setVariable ["lejoueur", player];
 missionNamespace setVariable ["lesnondesjouer", 1]; 
 //missionNamespace setVariable ["getinplock", 0];
sleep 5;

_roadrunner = missionNamespace getVariable "roadrunner";
if (_roadrunner == 1) then 
{	
	_mastragraba = missionNamespace getVariable "mastragraba";
	deleteVehicle _mastragraba;
};		


player addAction 
[
    "<t color='#d90000'>PLAYER MENU</t>", 
    {
        createDialog 'nastynak007';
    },
    [],
    -100, 
    false, 
    true, 
    "",
    "true",
    -1,
    false,
    "",
    ""
];
if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
0 enableChannel [true, false];
1 enableChannel [true, false];
2 enableChannel [true, false];
};