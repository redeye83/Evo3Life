/*
	File: fn_getPMission.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by Woods
	Description:
	Selects a random places for a patrol mission.
	Needs to be revised.
*/
private["_pp","_target","_ppmark","_person"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_person = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
if(side _person != west) exitWith { hint "It seems your version of the Butter System is out of date, please update!" };
if(str(_target) in life_pp_points) then
{
	private["_ppoint"];
	_ppoint = life_pp_points - [(str(_target))];
	_pp = _ppoint call BIS_fnc_selectRandom;
}
	else
{
	_pp = life_pp_points call BIS_fnc_selectRandom;
};

life_pp_start = _target;

life_patrol_in_progress = true;
life_pp_point = call compile format["%1",_pp];

_pp = [_pp,"_"," "] call KRON_Replace;
life_cur_task = player createSimpleTask [format["Patrol_%1",life_pp_point]];
life_cur_task setSimpleTaskDescription [format[localize "STR_NOTF_PStart",toUpper _pp],"Patrol Mission",""];
life_cur_task setTaskState "Assigned";
player setCurrentTask life_cur_task;
_ppmark = createMarkerLocal ["markername",[_pp]];
_ppmark setMarkerShapeLocal "ICON";
_ppmark setMarkerTypeLocal "FLAG";
["PatrolAssigned",[format[localize "STR_NOTF_PTask",toUpper _pp]]] call bis_fnc_showNotification;

[] spawn
{
	waitUntil {!life_patrol_in_progress OR !alive player};
	if(!alive player) then
	{
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["PatrolFailed",[localize "STR_NOTF_PFailed"]] call BIS_fnc_showNotification;
		life_patrol_in_progress = false;
		life_pp_point = nil;
	};
};