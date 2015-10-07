#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;

private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in [""])) then {
	if((__GETC__(life_mediclevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_mediclevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
//[] call life_fnc_Uniformscolor;

sleep 2;
hint "EMS FREQ: 33.1 / DOC FREQ: 33.2 / SO FREQ: 33.3 / SWAT FREQ: 33.4";