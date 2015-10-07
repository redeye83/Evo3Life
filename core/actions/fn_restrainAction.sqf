/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target. Anyone with handcuffs can now restrain, cops can not restrain each other.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(playerSide == west && side _unit == west) exitWith {};//Allow everyone to restrain but stop cops being dicks
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
/*old Broadcast!
player say3D "cuff"; 	//cuff sound <------------------------HERE
*/
if(life_inv_handcuffs < 1) then 
{
    hint "You have no handcuffs";
} else {
    life_inv_handcuffs = life_inv_handcuffs - 1;
    _unit say3D "handcuffs";
	_unit setVariable["restrained",true,true];
	[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
//[[0,format["%1 was restrained by %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};