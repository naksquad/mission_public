private _veh = _this # 0;

if (isPlayer _veh) exitWith { 
	_veh vehicleChat "This pad is for UAV service only, soldier!"; 
};

_veh vehicleChat "Servicing UAV, please wait ...";

_veh setFuel 0;

//---------- RE-ARMING

sleep 10;

_veh vehicleChat "Re-arming ...";

//---------- REPAIRING

sleep 10;

_veh vehicleChat "Repairing ...";

//---------- REFUELING

sleep 10;

_veh vehicleChat "Refueling ...";

//---------- FINISHED

sleep 10;

_veh setDamage 0;
_veh vehicleChat "Repaired (100%).";

_veh setVehicleAmmo 1;
_veh vehicleChat "Re-armed (100%).";

_veh setFuel 1;
_veh vehicleChat "Refuelled (100%).";

sleep 2;

_veh vehicleChat "Service complete.";