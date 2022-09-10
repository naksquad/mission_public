if (Vcm_ActivateAI) then
{
	{
		_lesplongers = ["O_diver_F"];
		if (local _x && {simulationEnabled (leader _x)} && {!(isplayer (leader _x))} && {(leader _x) isKindOf "Man"}) then 
		{
			if !(typeOf leader _x in _lesplongers) then
			{
				private _Grp = _x;
				if !(_Grp in VcmAI_ActiveList) then //{!(VCM_SIDEENABLED findIf {_x isEqualTo (side _Grp)} isEqualTo -1)}
				{
					if !(((units _Grp) findIf {alive _x}) isEqualTo -1) then
					{
						_x call VCM_fnc_SquadExc;
					};
				};
			};
		};
	} foreach allGroups;
};