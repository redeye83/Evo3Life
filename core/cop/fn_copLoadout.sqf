/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "doj_uni";
player addVest "A3L_deptjvest1";
player addBackpack "AM_PoliceBelt";

player addWeapon "Taser_26";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;