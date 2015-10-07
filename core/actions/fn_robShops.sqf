/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "You can not rob this station!" };
if(_robber distance _shop > 10) exitWith { hint "You need to be within 10m of the cashier to rob him!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Robbery already in progress!" };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, you do not threaten me! Get out of here you hobo!" };
if (_kassa == 0) exitWith { hint "There is no cash in the register!" };

_rip = true;
_kassa = 10000 + round(random 10000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 65) then { hint "The cashier hit the silent alarm, police has been alerted!"; [[1,format["ALARM! - Gasstation: %1 is being robbed!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "There isnt enough Police to rob gas station!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(_rip) then
{
_markername = "Marker_" + str (round (random 500));
_Pos = position player; // by ehno: get player pos
_marker = createMarker [_markername, _Pos]; //by ehno: Place a Maker on the map
_markername setMarkerColor "ColorRed";
_markername setMarkerText "!ATTENTION!";
_markername setMarkerType "mil_warning";
while{true} do
{
sleep 0.85;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (%1%2)...",round(_cP * 100),"%"];
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker _markername; _shop switchMove ""; hint "You need to stay within 10m to Rob registry! - Now the registry is locked."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker _markername; // by ehno delete maker
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
private["_array","_ind","_val"];
_array = life_shop_npc getVariable["robbers",[]];
_ind = [getPlayerUID player,_array] call TON_fnc_index;
if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _kassa;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		life_shop_npc setVariable["robbers",_array,true];
	}
		else
	{
		_array pushBack [getPlayerUID player,profileName,_price];
		life_shop_npc setVariable["robbers",_array,true];
	};
//[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 300;
_action = _shop addAction["Rob the Gas Station",life_fnc_robShops];	
_shop switchMove "";