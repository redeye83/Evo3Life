/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Emita Station","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","SWAT Base","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","County Jail","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_c","Central Park","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_e","East District","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_w","Western Emita","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_s","South District","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = (nearestobjects [_pos,["house"],25]) select 0;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Fire Department","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Search and Rescue","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]			
		];
	};
};

_return;