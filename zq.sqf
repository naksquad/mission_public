#include "unitDefines.hpp"
disableSerialization;
waitUntil{!isNull (findDisplay V091)};





//_0 = ((findDisplay V091) displayCtrl MAMANBUFFER) ctrlEnable true;


_0 = ((findDisplay V091) displayCtrl MAMANBUFFER) ctrlSetText "Player Menu";
_0 = ((findDisplay V091) displayCtrl MAMANBUFFER) buttonSetAction  "createDialog 'nastynak007'";
_0 = ((findDisplay V091) displayCtrl V093) ctrlEnable false;
_0 = ((findDisplay V091) displayCtrl V093) ctrlSetText "nak anti hack online";
if ((getPlayerUID player) in (missionNameSpace getVariable "guirer")) then { 
    private _lespec = missionNameSpace getVariable "lespect"; 
    if (_lespec == 1) then {
        _0 = ((findDisplay V091) displayCtrl V092) ctrlEnable true;
        _0 = ((findDisplay V091) displayCtrl V092) ctrlSetText "turn Spectator off";
        _0 = ((findDisplay V091) displayCtrl V092) buttonSetAction  "[] spawn ROSE_fnc_lepartrons9;";
        
    }else
    {
        _0 = ((findDisplay V091) displayCtrl V092) ctrlEnable false;
        _0 = ((findDisplay V091) displayCtrl V092) ctrlSetText "ts3.naksquad.net";
    };
}else
{
    _0 = ((findDisplay V091) displayCtrl V092) ctrlEnable false;
    _0 = ((findDisplay V091) displayCtrl V092) ctrlSetText "ts3.naksquad.net";
};
_0 = ((findDisplay V091) displayCtrl V094) ctrlSetText localize "STR_DOM_MISSIONSTRING_2";
_0 = ((findDisplay V091) displayCtrl V09) ctrlEnable false;
_0 = ((findDisplay V091) displayCtrl V09) ctrlSetText localize "STR_DOM_MISSIONSTRING_3";
_0 = ((findDisplay V091) displayCtrl 104) ctrlEnable false;
//_0 = ((findDisplay V091) displayCtrl 104) buttonSetAction  "_roadrunner = missionNamespace getVariable 'roadrunner';if (_roadrunner == 1) then {_mastragraba = missionNamespace getVariable 'mastragraba';deleteVehicle _mastragraba;};";

Wlecaller = missionNamespace getVariable "therankin";
if (isNil "Wlecaller") then
{
	missionNamespace setVariable ["therankin", 0]; 
	Wlecaller = 0;
};

         
 // _lenumbxp = parseText format [ "<t size='1.5' align='center' color='#E00000'>%1</t><br/>____________________<br/>Tried To Kill <t color='#00B2EE'>%2</t>", Wlecaller,Wlecaller]; 
            

_lenumbxp = parseText format [ "<t font='PuristaBold' size='1.6' color='#00B2EE' >%1</t><br /><t font='PuristaBold' size='1.6'> XP", Wlecaller]; 
    [_lenumbxp,  [1.1,0.97,1,1], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;

    if (Wlecaller <= 300) then { 
   
    };

    if (Wlecaller > 301 && Wlecaller <= 500 ) then { 
    Laphoto = "Media\images\1private1.paa"; 
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
    };
    if (Wlecaller > 501 && Wlecaller <= 1000 ) then { 
    Laphoto = "Media\images\2firstclass.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
     };
    if (Wlecaller > 1001 && Wlecaller <= 4000 ) then {
    Laphoto = "Media\images\3Specialist.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 4001 && Wlecaller <= 10600 ) then {
    Laphoto = "Media\images\4Corporal.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 10601 && Wlecaller <= 28800 ) then {
    Laphoto = "Media\images\5Sergeant.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 28800 && Wlecaller <= 36000 ) then {
    Laphoto = "Media\images\6StaffSergeant.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 36000 && Wlecaller <= 43200 ) then { 
    Laphoto = "Media\images\7SergeafClass.paa"; 
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;};
    if (Wlecaller > 43200 && Wlecaller <= 50400 ) then {
    Laphoto = "Media\images\8MasSergeant.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 50400 && Wlecaller <= 61200 ) then {
    Laphoto = "Media\images\9SG.paa"; 
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;};
    if (Wlecaller > 61200 && Wlecaller <= 72000 ) then { 
    Laphoto = "Media\images\10SGM.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 72000 && Wlecaller <= 86400 ) then { 
    Laphoto = "Media\images\11CSM.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 86400 && Wlecaller <= 104400 ) then {
    Laphoto = "Media\images\12SMA.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 104400 && Wlecaller <= 126000 ) then { 
    Laphoto = "Media\images\18uso1.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 126000 && Wlecaller <= 151200 ) then { 
    Laphoto = "Media\images\19uso2.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 151200 && Wlecaller <= 180000 ) then { 
    Laphoto = "Media\images\20uso3.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 180000 && Wlecaller <= 216000 ) then { 
    Laphoto = "Media\images\21uso4.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 216000 && Wlecaller <= 259200 ) then { 
    Laphoto = "Media\images\22so5.paa"; 
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
};
    if (Wlecaller > 259200 && Wlecaller <= 309600 ) then { 
    Laphoto = "Media\images\23uso6.paa"; [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
};
    if (Wlecaller > 309600 && Wlecaller <= 370800 ) then { 
    Laphoto = "Media\images\24uso7.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 370800 && Wlecaller <= 442800 ) then { 
    Laphoto = "Media\images\25uso8.paa"; 
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
};
    if (Wlecaller > 442800 && Wlecaller <= 529200 ) then { 
    Laphoto = "Media\images\26uso9.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 529200 && Wlecaller <= 633600 ) then { 
    Laphoto = "Media\images\27uso10.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
    if (Wlecaller > 633600 && Wlecaller <= 759600 ) then { 
    Laphoto = "Media\images\28uso11.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText; };
    if (Wlecaller > 759600) then {
    Laphoto = "Media\images\29o6star.paa";
    [
    '<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(Laphoto))+' />',
    safeZoneX + safeZoneW - 0.18 * 3 / 4,
	safeZoneY + safeZoneH - 0.24,
    5,
    1,
    0,
    3090
    ] spawn bis_fnc_dynamicText;
 };
sleep 3; 
_0 = ((findDisplay V091) displayCtrl 104) ctrlEnable true;
waitUntil{isNull (findDisplay V091)}
