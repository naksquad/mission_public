#include "..\..\DefinePrice.hpp"

private _RECRUITAIPRICE = RECRUITAIPRICE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_RECRUITAIPRICE = RECRUITAIPRICEELT;
};

_lecallers = missionNamespace getVariable "themasterrankin";
_leresult = _lecallers + _RECRUITAIPRICE;
_therownerid = clientOwner;
missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
sleep 0.01;
missionNamespace setVariable ["lock1", 0];

