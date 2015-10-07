/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","_money","_cash","_ammo","_select","_ammocount","_selectcount","_bulletcount","_dam","_watermark"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_money = _ui displayCtrl 23520;
_ammo = _ui displayCtrl 23525;
_select = _ui displayCtrl 23535;
_bullet = _ui displayCtrl 23530;

_dam = damage player;
_dam = round(_dam * 100);
_dam = round(100 - _dam);
_cash = getFatigue player;
_cash = round(_cash * 100);

_ammocount = (player ammo (currentWeapon player));
_amountmag = {_x == (currentmagazine player)} count magazines player;
_gunmode = currentWeaponMode player;



//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.558];
_food ctrlSetText format["%1", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.509];
_water ctrlSetText format["%1", life_thirst];
_water ctrlCommit 0;
//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.460];
_health ctrlSetText format["%1", format["%1",_dam]];
_health ctrlCommit 0;
//Update Money
_money ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.410];
_money ctrlSetText format["%1", format["%1",_cash]];
_money ctrlCommit 0;

//Update Mags
_ammo ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.360];
_ammo ctrlSetText format["%1", format["%1",_amountmag]];
_ammo ctrlCommit 0;

//Update bullet count
_bullet ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.310];
_bullet ctrlSetText format["%1", format["%1",_ammocount]];
_bullet ctrlCommit 0;

//Update Select Fire
_select ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.260];
_select ctrlSetText format["%1", format["%1",_gunmode]];
_select ctrlCommit 0;




