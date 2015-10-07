#include <macro.h>
/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_cop","_player"];
_cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if(isNull _cop) exitWith {};

//Monitor excessive restrainment
[] spawn {
	private "_time";
	while {true} do {
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player Getvariable ["restrained",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player Getvariable ["restrained",FALSE]) && vehicle player == player) exitWith {
			player Setvariable ["restrained",FALSE,TRUE];
			player Setvariable ["Escorting",FALSE,TRUE];
			player Setvariable ["transporting",false,true];
			detach player;
			titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"];
		};
	};
};

if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
titleText[format[localize "STR_Cop_Retrained",_cop Getvariable ["realname",name _cop]],"PLAIN"];
        player say3D "cuff";
				
while {player Getvariable  "restrained"} do {
	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};
	
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player Getvariable "restrained") || vehicle player != _state};
			
	if(!alive player) exitWith {
		player Setvariable ["restrained",false,true];
		player Setvariable ["Escorting",false,true];
		player Setvariable ["transporting",false,true];
		detach _player;
	};
	
	if(!alive _cop) exitWith {
		player Setvariable ["Escorting",false,true];
		detach player;
	};
	
	if(vehicle player != player) then {
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};
};

//disableUserInput false;
		
if(alive player) then {
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player Setvariable ["Escorting",false,true];
	player Setvariable ["transporting",false,true];
	detach player;
};