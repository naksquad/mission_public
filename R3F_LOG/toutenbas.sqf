		private ["_heliporteur","_myRope1", "_myRope2", "_myRope3", "_myRope4","_objet"];

	_chuteType = "B_Parachute_02_F";
    _smokeType =  ["SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange"];  			//smoke shell color you want to use
    _lightType =  ["Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue"];
	
	_heliporteur = _this # 0;
	_objet = (_this select 3) select 0;
	_minheight = 150;
    _tooLow = format ["<img size='7' image='Media\images\naksquad1.paa'/><br/><t align='center'><t size='2.2' color='#ed3b00'>TOO LOW</t><br/><t size='1.2' color='#9ef680'>You need to be above</t><br/><t size='1.5' color='#ed3b00'>%1 meters</t><br/><t size='1.2' color='#9ef680'>in order to drop the pad.</t></t>",_minheight];

	if ((getPos _heliporteur) select 2 > _minheight) then 
	{
		removeAllActions _heliporteur;
		sleep 1;
		detach _objet; 
		_chute = createVehicle [_chuteType, [getPosASL _objet select 0, getPosASL _objet select 1, (getPosASL _objet select 2) - 50], [], 0, 'FLY'];
		_chute setPos [getPosASL _objet select 0, getPosASL _objet select 1, (getPosASL _objet select 2) - 50];
	//	_crate = createVehicle [_chuteType, position _chute, [], 0, 'NONE'];
		_chute disableCollisionWith _objet;
		_chute disableCollisionWith _heliporteur;
		_objet attachTo [_chute, [0, 0, -1.3]];
		_objet allowdamage false;
		_light = createVehicle [selectRandom _lightType, position _chute, [], 0, 'NONE'];
		_light attachTo [_chute, [0, 0, 0]];
			sleep 5;
			waitUntil {
				
			((getPosATL _objet) select 2 < 2) || (isNull _chute)
		};
		sleep 7;
		detach _objet;
		_objet allowdamage true;
		_smoke = (selectRandom _smokeType) createVehicle [getPos _objet select 0, getPos _objet select 1,5];

		_heliporteur setVariable ["R3F_LOG_heliporte", objNull, true];
			_objet setVariable ["R3F_LOG_est_transporte_par", objNull, true];
			// D�tacher l'objet et lui appliquer la vitesse de l'h�liporteur (inertie)
			[_objet, "detachSetVelocity", velocity _heliporteur] call R3F_LOG_FNCT_exec_commande_MP;
	
			systemChat format [STR_R3F_LOG_action_heliport_larguer_fait, getText (configFile >> "CfgVehicles" >> (typeOf _objet) >> "displayName")];
			 
			_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG_action_heliporter + "</t>"), {_this call R3F_LOG_FNCT_heliporteur_heliporter}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_objet_addAction == _target && R3F_LOG_action_heliporter_valide"];
			_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG_action_heliport_larguer + "</t>"), {_this call R3F_LOG_FNCT_heliporteur_larguer}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_objet_addAction == _target && R3F_LOG_action_heliport_larguer_valide"];
		
	
	} else {
		hint parseText _tooLow;
	};
	


	



