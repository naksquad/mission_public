// by Bon_Inf*

if(not local player) exitWith{};

#include "dialog\definitions.sqf"
disableSerialization;

_display = findDisplay RECRUITING_DIALOG;
_listbox = _display displayCtrl RECRUITING_UNITLIST;
_sel = lbCurSel _listbox; if(_sel < 0) exitWith{};

_unittype = recruit_recruitableunits select _sel;
_typename = lbtext [RECRUITING_UNITLIST,_sel];

closeDialog 0;
sleep 3;

// Vile Ace issue with spawning on Carrier
//_unit = group player createUnit [_unittype, [(getPos player select 0) + 5,(getPos player select 1) + 5,(getPos player select 2) + 1], [], 0, "FORM"];
_unit = group player createUnit [_unittype, group player, [], 0, "NONE"];


_unit setRank "PRIVATE";
[_unit] execVM ("recruit_units\init_newunit.sqf");

hint parseText format["Your <t size='1.0' font='PuristaMedium' color='#008aff'>%1</t> %2 has arrived.",_typename,name _unit];
