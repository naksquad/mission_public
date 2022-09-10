#include "..\..\DefinePrice.hpp"
_lecallers = missionNamespace getVariable "themasterrankin";
_leresult = _lecallers + RECRUITAIPRICE;
_therownerid = clientOwner;
missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
sleep 0.01;
missionNamespace setVariable ["lock1", 0];

