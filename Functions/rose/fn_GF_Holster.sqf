


//________________  Author : [GR]GEORGE F ___________ 04.04.18 _____________

/*
________________ GF Holster Script ________________

https://forums.bohemia.net/forums/topic/215826-gf-holster-script/?tab=comments#comment-3281149

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /* 
means that it is disabled , so there is no need to delete the extra lines. 

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain collours to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing . 
*/



//________________  Author : [GR]GEORGE F ___________ 04.04.18 _____________

/*
https://forums.bohemia.net/forums/topic/215798-weapon-holster-by-key-pressed/?tab=comments#comment-3281031

You can search here for key bindings
https://community.bistudio.com/wiki/DIK_KeyCodes

DIK_5               0x06
DIK_TAB             0x0F

*/


//systemchat "G F   H o l s t e r   S c r i p t   i n i t i a l i s i n g";

//[]	spawn {
	waitUntil {!isNull(findDisplay 46)};

	(findDisplay 46) displayAddEventHandler ["KeyDown", {
	if(_this select 1 == 0x23) // key 5		DIK_5 
	then {
	_Holster_Weapon_ctrl = (_this select 0) displayCtrl 9001;
	if(isNull(_Holster_Weapon_ctrl)) then {
	_Holster_Weapon_ctrl = (_this select 0) ctrlCreate ["RscText", 9001];
	_Holster_Weapon_ctrl ctrlShow false;
	
	//________________ display notification ________________
	
	//To show the display notification , uncomment the code below	//
	
	//_Holster_Weapon_ctrl ctrlSetPosition [SafeZoneXAbs, SafeZoneY + (SafeZoneH - 0.15) / 3, 2, 0.05];
	//_Holster_Weapon_ctrl ctrlSetFontHeight 0.04;
	//_Holster_Weapon_ctrl ctrlSetText "Weapon Holstered";
	//_Holster_Weapon_ctrl ctrlCommit 0;
	
	};
	_shown = ctrlShown _Holster_Weapon_ctrl;
						
	(if(_shown)then{
			
	//________________ Weapon at the back ________________			
	player action ["SWITCHWEAPON",player,player,0];
	//you can add your own display notification	here	
	}else{
			
	//________________ Weapon in hands ________________			
	player action ["SWITCHWEAPON",player,player,-1];
	waitUntil {currentWeapon player == "" or {primaryWeapon player == "" && handgunWeapon player == ""}};
	//you can add your own display notification	here
	}); 
				
	_Holster_Weapon_ctrl ctrlShow !_shown;
	};
}];
//};

//systemchat "H o l s t e r    y o u r    W e a p o n    w i t h    k e y    5";