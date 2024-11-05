private ['_theadmins', '_lenondu', '_uidr', '_action', '_log', '_jeova','_vehIndex'];

if (!hasInterface && {!isServer}) exitWith{};

_theadmins = _this # 0;
removeAllActions _theadmins;

_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];

_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};

[_theadmins] remoteExecCall ["ROSE_fnc_lepartrons8", -2, false];

