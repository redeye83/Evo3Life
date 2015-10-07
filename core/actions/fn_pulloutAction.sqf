/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls civilians out of a car if it's stopped.
*/
private["_crew"];
_crew = crew cursorTarget;
/* Old system
{
	if(side _x != west) then
	{
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	};
} foreach _crew;
*/
if (playerSide == civilian) then 
{
	{
		if(_x getVariable "restrained") then
		{
			_x setVariable ["transporting",false,true]; 
			_x setVariable ["Escorting",false,true];
			[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
		};
	} foreach _crew;
} else {
	{
		if(side _x != west || (_x getVariable "restrained")) then
		{
			_x setVariable ["transporting",false,true]; 
			_x setVariable ["Escorting",false,true];
			[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
		};
	} foreach _crew;
};