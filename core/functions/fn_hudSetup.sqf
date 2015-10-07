/*
cg hud
weapon / life / food / water / ammo / select fire / fps
also calls medwatch
*/

private["_display","_alpha","_version","_p","_pg","_currentcargo"];
disableSerialization;
_display = findDisplay 46;
_alpha = _display displayCtrl 1001;
_version = _display displayCtrl 1000;

2 cutRsc ["playerHUD","PLAIN"];
_version ctrlSetText format["BETA: 0.%1.%2",(productVersion select 2),(productVersion select 3)];


[] spawn
{
	while {true} do
	{
		[] call life_fnc_hudUpdate;
		sleep 1;
	};
};


