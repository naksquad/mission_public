private _target = _this # 0;
private _gear = [];
private _headgear = headgear _target;
private _back_pack = backpack _target;
private _back_pack_items = getItemCargo (unitBackpack _target);
private _back_pack_weap = getWeaponCargo (unitBackpack _target);
private _back_pack_maga = getMagazineCargo (unitBackpack _target);


_gear =
[
_headgear,
_back_pack,
_back_pack_items,
_back_pack_weap,
_back_pack_maga
];
_gear

