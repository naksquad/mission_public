_wp1 = (_this # 0) addWaypoint [ (_this # 1), _this # 2];
_wp1 setWaypointType "SAD";
_wp1 setWaypointCombatMode "YELLOW";
_wp1 setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
_wp1 setWaypointFormation "STAG COLUMN";
_wp1 setWaypointSpeed "LIMITED";
_wp1 setWaypointCompletionRadius 20;

_wp2 = (_this # 0) addWaypoint [ (_this # 1), _this # 2];
_wp2 setWaypointType "SAD";
_wp2 setWaypointCombatMode "YELLOW";
_wp2 setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
_wp2 setWaypointFormation "STAG COLUMN";
_wp2 setWaypointSpeed "LIMITED";
_wp2 setWaypointCompletionRadius 20;

_wp3 = (_this # 0) addWaypoint [waypointPosition _wp1, 0];
_wp3 setWaypointType "CYCLE";
_wp3 setWaypointCombatMode "YELLOW";
_wp3 setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
_wp3 setWaypointFormation "STAG COLUMN";
_wp3 setWaypointSpeed "LIMITED";
_wp3 setWaypointCompletionRadius 20;

(_this # 0) setCurrentWaypoint _wp1;

