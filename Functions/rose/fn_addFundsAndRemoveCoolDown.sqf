//Get Current value of themasterrankin
_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
_leresult = _lecallers + 500;
_therownerid = clientOwner;
missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
missionNamespace setVariable ["lock1", 0];