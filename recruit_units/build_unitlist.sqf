// by Bon_Inf*
//Modified by Moser -- 07/18/2014

#include "dialog\definitions.sqf"
disableSerialization;
#include "recruitable_units_static.sqf"


_display = findDisplay RECRUITING_DIALOG;
_unitlist = _display displayCtrl RECRUITING_UNITLIST;
//_queuelist = _display displayCtrl RECRUITING_QUEUE;
//_queuelist ctrlSetText format["Units queued: %1",count recruit_queue];
_weaponstring = "";
{
	_displname = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
	_picture = getText (configFile >> "CfgVehicles" >> _x >> "portrait");
	_weaponstring = format["%1",_displname,_picture];
	_unitlist lbAdd _weaponstring;
} foreach recruit_recruitableunits;