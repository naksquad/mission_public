sleep 15;
BAS_persistence_client_fnc_databaseAsyncCall = compile preprocessFileLineNumbers "basstardpersis\BAS_persistence\client\fn_asyncCall.sqf";call compile preprocessFileLineNumbers "basstardpersis\BAS_persistence\client\BAS_persistence_client_functions.sqf";if (isServer) then{[] spawn BAS_persistence_client_fnc_serverInit;};if (!isDedicated) then{[] spawn BAS_persistence_client_fnc_playerInit;};