

private ["_veh","_vehName","_completeText","_reward","_GAU","_rabbit","_mortar"];

smRewards =
[

["a Y-32 Xian", "O_T_VTOL_02_infantry_dynamicLoadout_F"],
["a F/A-181 Black Wasp II", "B_Plane_Fighter_01_F"],
["a WY-55 Hellcat", "I_Heli_light_03_dynamicLoadout_F"],
["an AH-99 Blackfoot", "B_Heli_Attack_01_dynamicLoadout_F"],
["a T-100 Varsuk", "O_MBT_02_cannon_F"],
["an AH-9 Pawnee Armed", "B_Heli_Light_01_dynamicLoadout_F"],
["a To-199 Neophron", "O_Plane_CAS_02_dynamicLoadout_F"],
["a To-201 Shikra", "O_Plane_Fighter_02_F"],
["a F/A-181 Black Wasp II (Stealth)", "B_Plane_Fighter_01_Stealth_F"],
["an A-164 Wipeout (CAS)", "B_Plane_CAS_01_dynamicLoadout_F"],
["a CH-67 Huron Armed", "B_Heli_Transport_03_F"],
["a MI-48 Kajman", "O_Heli_Attack_02_dynamicLoadout_F"],
["a PO-30 Orca", "O_Heli_Light_02_dynamicLoadout_F"],
["a T-140K Angara", "O_MBT_04_command_F"],
["a F/A-181 Black Wasp II", "B_Plane_Fighter_01_F"],
["a FV-720 Mora", "I_APC_tracked_03_cannon_F"],
["an A-149 Gryphon", "I_Plane_Fighter_04_F"],
["an AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F"],
["a V-44 X Blackfish Gunship", "B_T_VTOL_01_armed_F"],
["a T-100 Varsuk", "O_MBT_02_cannon_F"],
["a To-201 Shikra (Stealth)", "O_Plane_Fighter_02_Stealth_F"],
["a M2A4 Slammer (Urban Purpose)", "B_MBT_01_TUSK_F"],
["a MI-290 Taru (Bench)", "O_Heli_Transport_04_bench_F"],
["a CH-67 Huron Armed", "B_Heli_Transport_03_F"],
["a T-140K Angara", "O_MBT_04_command_F"],
["a A-143 Buzzard", "I_Plane_Fighter_03_dynamicLoadout_F"],
["a UH-80 Ghost Hawk", "B_Heli_Transport_01_F"],
["a F/A-181 Black Wasp II", "B_Plane_Fighter_01_F"]
];
smMarkerList =
["smReward1","smReward2","smReward3","smReward4","smReward5","smReward6","smReward7","smReward8","smReward9","smReward10","smReward11","smReward12","smReward13","smReward14","smReward15","smReward16","smReward17","smReward18","smReward19","smReward20","smReward21","smReward22","smReward23","smReward24","smReward25","smReward26","smReward27"];

_veh = selectRandom smRewards;

_vehName = _veh # 0;
RewardvehVarname = _veh # 1;

_completeText = format[
"<t align='center'><t size='2.2'>Side Mission</t><br/><t size='1.5' color='#08b000'>COMPLETE</t><br/>____________________<br/>Great job! The opposition forces stationed on the island won't last long if you keep that up!<br/><br/>We've given you %1 to help with the fight. You'll find it at the main airport.<br/><br/></t>",_vehName];
_reward = createVehicle [RewardvehVarname, getMarkerPos "smReward1",smMarkerList,0,"NONE"];

[_reward] call NAK_fnc_reward;

[_completeText] remoteExec ["NAK_fnc_globalHint",0,false];
_rewardtext = format["Your team received %1!", _vehName];
["Reward",_rewardtext] remoteExec ["NAK_fnc_globalNotification",0,false];

