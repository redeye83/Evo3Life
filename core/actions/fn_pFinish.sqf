/*
	File: fn_pFinish.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by Woods
	Description:
	Finishes the Patrol Mission and calculates the money earned based
	on distance between A->B
*/
private["_pp","_dis","_price"];
_pp = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_patrol_in_progress = false;
life_pp_point = nil;
_dis = round((getPos life_pp_start) distance (getPos _pp));
_price = round(1.7 * _dis);

["PatrolSucceeded",[format[(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
life_cash = life_cash + _price;
deleteMarkerLocal "markername";

private["robbers","_names"];
_robbers = (_this select 0) getVariable["robbers",[]];
//if(count _sellers == 0) exitWith {hint localize "STR_Cop_DealerQuestion"}; //No data.
life_action_inUse = true;
_names = "";
{
	if(_x select 2 > 150000) then
	{
		_val = round((_x select 2) / 16);
	};
	[[_x select 0,_x select 1,"211",_val],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	_names = _names + format["%1<br/>",_x select 1];
} foreach _sellers;

hint parseText format[(localize "STR_Cop_RobberMSG")+ "<br/><br/>%1",_names];
(_this select 0) setVariable["robbers",[],true];
life_action_inUse = false;