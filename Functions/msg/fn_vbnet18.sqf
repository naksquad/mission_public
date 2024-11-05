private _lecallers = missionNamespace getVariable "themasterrankin";
_lecallers = _lecallers + 5;
private _therownerid = clientOwner;
missionNamespace setVariable ["themasterrankin", _lecallers, _therownerid];
private _Wlecaller = 5;