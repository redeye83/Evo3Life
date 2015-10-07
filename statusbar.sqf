waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
fn_statusBar.sqf
*/

4 cutRsc ["osefStatusBar","PLAIN"]; 

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {alive player} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText parseText format["<img size='1' image='icons\itime.paa'/><t size='1px'> %1</t> | <img size='1' image='icons\icop.paa'/><t size='1px'> %2</t> | <img size='1' image='icons\iciv.paa'/><t size='1px'> %3</t> | <img size='1' image='icons\iems.paa'/><t size='1px'> %4</t> | <t size='1px'>EVO 3 LIFE</t> | <img size='1' image='icons\ihealth.paa'/><t size='1px'> %5</t> | <img size='1' image='icons\ifood.paa'/><t size='1px'> %6</t> | <img size='1' image='icons\iwater.paa'/><t size='1px'> %7</t> | <img size='1' image='icons\icash.paa'/><t size='1px'> %8</t> | <img size='1' image='icons\iatm.paa'/><t size='1px'> %9</t>", [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString, 
    west countSide playableUnits, civilian countSide playableUnits,
    independent countSide playableUnits,round((1 - (damage player)) * 100),life_hunger,life_thirst,[life_cash] call life_fnc_numberText,[life_atmcash] call   
    life_fnc_numberText,mapGridPosition player, _counter];
	}; 
};