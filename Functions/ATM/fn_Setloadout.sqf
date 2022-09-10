_unit = _this # 0;
_gear = _this # 1;
removeheadgear _unit;
removeBackPack _unit;
_unit addBackpack "B_AssaultPack_blk";
removeBackPack _unit;
if ((_gear select 1) != "") then {_unit addBackPack (_gear select 1);clearAllItemsFromBackpack _unit;};
if ((_gear select 0) != "") then {_unit addHeadgear (_gear select 0);};
if (count ((_gear select 3) select 0) > 0) then
{
	for "_i" from 0 to (count ((_gear select 3) select 0) - 1) do
	{
		(unitBackpack _unit) addweaponCargoGlobal [((_gear select 3) select 0) select _i,((_gear select 3) select 1) select _i];
	};
};
if (count ((_gear select 4) select 0) > 0) then
{
	for "_i" from 0 to (count ((_gear select 4) select 0) - 1) do
	{
		(unitBackpack _unit) addMagazineCargoGlobal [((_gear select 4) select 0) select _i,((_gear select 4) select 1) select _i];
	};
};
if (count ((_gear select 2) select 0) > 0) then
{
	for "_i" from 0 to (count ((_gear select 2) select 0) - 1) do
	{
		(unitBackpack _unit) addItemCargoGlobal [((_gear select 2) select 0) select _i,((_gear select 2) select 1) select _i];
	};
};