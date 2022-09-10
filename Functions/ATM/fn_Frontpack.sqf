_target = _this # 0;
_pack = unitBackpack _target;
_class = typeOf _pack;

[_target,_class] spawn {
private ["_target","_class","_packHolder"];
_target	= _this # 0;
_class 	= _this # 1;

_packHolder = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"];
_packHolder addBackpackCargo [_class, 1];
_packHolder attachTo [_target,[0.1,0.56,-.72],"pelvis"];
_target setvariable ["frontpack", _packHolder,true];
_packHolder setVectorDirAndUp [[0,1,0],[0,0,-1]];

waitUntil {animationState _target == "para_pilot"};
_packHolder attachTo [vehicle _target,[0.1,0.72,0.52],"pelvis"];
_packHolder setVectorDirAndUp [[0,0.1,1],[0,1,0.1]];
};
