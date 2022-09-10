// Vehicle Info Crew Script By : MarKeR. Thanks to Blakeace for azimuth code usage. Also XxAnimusxX for showing me a couple of errors.   
// Vehicle Crew and Target HUD for ARMA 3. Should work with ARMA 2 with a change of icon path for driver, gunner and cargo.
// For use with script download from  http://www.armaholic.com/page.php?id=20121    save and replace crew.sqf


Private ["_name","_vehicle","_vehname","_weapname","_weap","_target","_picture","_vehtarget","_azimuth","_wepdir","_hudnames","_ui"];   

disableSerialization;
getoutcheck = 0;

//Added showVehCrew variable so that I can hide with the vilehud mod.

if (isnil "showVehCrew") then {
 showVehCrew = 1; 
};  


 while {true} do  {
 
  	 1000 cutRsc ["HudNames","PLAIN"];
  	 _ui = uiNameSpace getVariable "HudNames";
	 _HudNames = _ui displayCtrl 99999;

    _lesnondesjouer = missionNamespace getVariable "lesnondesjouer";
    if(_lesnondesjouer == 1) exitWith {diag_log format ["_lesnondesjouer on sors le number = %1", _lesnondesjouer];};
    diag_log format ["_lesnondesjouer ou dehors tourne = %1", _lesnondesjouer];
    if ( getoutcheck == 0) then {
        if ( (lifeState player) == "INCAPACITATED" ) then  { 
            if (!((vehicle player) isKindOf "Ship")) then {
                unassignVehicle player;
                player action ["EJECT", vehicle player];
                player action ["getOut", vehicle player];
            };
            getoutcheck = 1;
        };  
    };
	If (showVehCrew == 1) then {
	   if (player != vehicle player) then
	   {
		   _name = "";
		   _vehicleID = "";
		   _picture = ""; 
		   _vehicle = assignedVehicle player;
		   _vehname= getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "DisplayName");
		   _weapname = getarray (configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Turrets" >> "MainTurret" >> "weapons"); 
		   _weap = _weapname select 0;
		   _name = format ["<t size='1.00' color='#556b2f'>%1</t><br/>", _vehname];



		   {
			   

			   if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
			   {

				   if(driver _vehicle == _x) then
				   {

					   _name = format ["<t size='0.85' color='#f0e68c'>%1 %2</t> <img size='0.7' color='#6b8e23' image='a3\ui_f\data\IGUI\Cfg\Actions\getindriver_ca.paa'/><br/>", _name, (name _x)];
				   }

				   else
				   {

				_target = cursorTarget;

				if (_target isKindOf "Car" || _target isKindOf "Motorcycle" || _target isKindOf "Tank" || _target isKindOf "Air" || _target isKindOf "Ship") then

				{
					_vehicleID = getText (configFile >> "cfgVehicles" >> typeOf _target >> "displayname");		             
					_picture = getText (configFile >> "cfgVehicles" >> typeOf _target >> "picture");
				};

				  _wepdir =  (vehicle player) weaponDirection _weap;
			  _Azimuth = round  (((_wepdir select 0) ) atan2 ((_wepdir select 1) ) + 360) % 360;
					   _name = format ["<t size='0.85' color='#f0e68c'>%1 %2</t> <img size='0.7' color='#6b8e23' image='a3\ui_f\data\IGUI\Cfg\Actions\getingunner_ca.paa'/><br/> <t size='0.85' color='#f0e68c'>Heading :<t/> <t size='0.85' color='#ff0000'>%3</t><br/><t size='0.85' color='#f0e68c'> Target :<t/> <t size='0.85' color='#ff0000'>%4</t><br/><t size='0.85' color='#f0e68c'> Display : </t><t size='0.85' color='#f0e68c'><img size='1' image='%5'/></t><br/>", _name, (name _x), _Azimuth,_vehicleID, _picture];

					};

			   }
			   else
			   {
				   _name = format ["<t size='0.85' color='#f0e68c'>%1 %2</t> <img size='0.7' color='#6b8e23' image='a3\ui_f\data\IGUI\Cfg\Actions\getincargo_ca.paa'/><br/>", _name, (name _x)];
			   };  

		   } forEach crew _vehicle;



			_HudNames ctrlSetStructuredText parseText  _name;
			_HudNames ctrlCommit 0;


		};
	};
   sleep 3;
 }; 