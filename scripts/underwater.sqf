if (isServer) then {
	[] spawn {
		while {true} do {
			{
				if (!isNull _x && {alive _x}) then{
					if (typeOf _x == "B_APC_Tracked_01_CRV_F") then { 
						if (underwater _x) then {
							_x setDamage 1;
						};
					};
				};
			} forEach (nearestObjects [getMarkerPos "marker_261", ["LandVehicle"], 250]);
		sleep 60;
		};
	};
};

