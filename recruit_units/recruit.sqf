// by Bon_Inf*
if (not local player) exitWith {};

#include "dialog\definitions.sqf"
disableSerialization;

private _display = findDisplay RECRUITING_DIALOG;
private _listbox = _display displayCtrl RECRUITING_UNITLIST;
private _sel = lbCurSel _listbox;
if (_sel < 0) exitWith {};

private _unittype = recruit_recruitableunits select _sel;
private _typename = lbText [RECRUITING_UNITLIST, _sel];

closeDialog 0;
sleep 3;

private _unit = group player createUnit [_unittype, group player, [], 0, "NONE"];

_unit setRank "PRIVATE";
[_unit] execVM ("recruit_units\init_newunit.sqf");

hint parseText format["Your <t size='1.0' font='PuristaMedium' color='#008aff'>%1</t> %2 has arrived.", _typename, name _unit];