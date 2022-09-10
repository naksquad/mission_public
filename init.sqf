disableRemoteSensors true;
calculatePlayerVisibilityByFriendly false;
enableSaving false;
[] execVM "R3F_LOG\init.sqf";
[] execVM "Vcom\VcomInit.sqf";
[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";
call compileFinal preprocessFile "basstardpersis\BAS_persistence\client\BAS_persistence_client_initialization.sqf";
lcarrier enableSimulationGlobal FALSE;
//VileAce added for recruit units
[] execVM "recruit_units\recruitInit.sqf";
//VileAce Added for Bobcat underwater check
[] execVM "scripts\underwater.sqf";
missionNamespace setVariable ["foxy1", 0, true];
missionNamespace setVariable ["foxy2", 0, true];

