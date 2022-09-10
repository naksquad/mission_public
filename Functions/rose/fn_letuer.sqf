if (true) exitWith {};
  private ["_pname","_picture","_color"];

  leblesser = _this # 0;
    _dataplayrowner = clientOwner; 
  missionNamespace setVariable ["killblocker", 0, _dataplayrowner];

  alertador = {
              _uid = _this # 0;
              _instigator = _this # 1;
              _unit = _this # 2;
              _unituid = _this # 3;
                _dataplayrowner = clientOwner; 
    
              _instigator1 = name _instigator;
              _unit1 = name _unit;
              _truenumba = 0;
      
              if(getPlayerUID player == _unituid)then{ player removeAllEventHandlers "HandleDamage";};
              if(getPlayerUID player == _uid)then{
                vehicle player setAmmo [currentWeapon vehicle player, 0];
                while {_truenumba < 60} do
                    {
                      titleText ["YOU VE BEEN PUNISHED FOR TEAMKILLING!!!!\nWait 1 Min","BLACK FADED"];
                      sleep 1;
                      _truenumba = _truenumba + 1;
                      vehicle player setAmmo [currentWeapon vehicle player, 0];
                    }; 
                    vehicle player setAmmo [currentWeapon vehicle player, 1]; 
                    _totaltk =   missionNamespace getVariable "totaltk";
                    _totaltk = _totaltk + 1;
                    missionNamespace setVariable ["killblocker", 0, _dataplayrowner];
                    missionNamespace setVariable ["totaltk", _totaltk, _dataplayrowner];
                    _totaltk = 0
              };    

              if(getPlayerUID player == _unituid)then{
                sleep 10;
                    player addEventHandler ["HandleDamage", {
                    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
                    if ((lifeState _instigator) == "INCAPACITED" || (lifeState _unit) == "DEAD" || (lifeState _unit) == "INCAPACITED" || (lifeState _unit) == "DEAD" || (lifeState _unit) == "DEAD-RESPAWN" || (lifeState _unit) == "DEAD-SWITCHING")  exitWith { };   
                    if ((side _unit  == side _instigator) && (side _unit  == west ) && (side _instigator  == west )  && (_unit  !=  _instigator))  then { 
                  if (lifeState _instigator != "INCAPACITED") then {
                    
                        _uidr = getPlayerUID _instigator;
                        _unituid = getPlayerUID _unit;
                        [_uidr,_instigator,_unit,_unituid] remoteExec ["alertador", -2]; 
                        };
                      };
                  
                      
                  }];
              };    
        };  

  leblesser addEventHandler ["HandleDamage", {
    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
      if ((lifeState _instigator) == "INCAPACITED" || (lifeState _unit) == "DEAD" || (lifeState _unit) == "INCAPACITED" || (lifeState _unit) == "DEAD" || (lifeState _unit) == "DEAD-RESPAWN" || (lifeState _unit) == "DEAD-SWITCHING")  exitWith { };   

    if ((side _unit  == side _instigator) && (side _unit  == west ) && (side _instigator  == west )  && (_unit  !=  _instigator))  then { 
          if (lifeState _instigator != "INCAPACITED") exitWith {
              if (missionNameSpace getVariable "killblocker" isEqualTo 0) then {
                vehicle _instigator setAmmo [currentWeapon vehicle _instigator, 0];
                _dataplayrowner = clientOwner; 
                missionNamespace setVariable ["killblocker", 1, _dataplayrowner];
                _uidr = getPlayerUID _instigator;
                _unituid = getPlayerUID _unit;
                [_uidr,_instigator,_unit,_unituid] remoteExec ["alertador", -2]; 
          
              };
          };
      };
      
  }];


