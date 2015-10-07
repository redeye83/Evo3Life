#include <macro.h>
/*
	File: fn_copSearch.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns information on the search.
*/
life_action_inUse = false;
if(side player == civilian) then {
private["_civ","_invs","_license","_robber","_guns","_gun"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_invs = [_this,1,[],[[]]] call BIS_fnc_param;
_cop = [_this,2,false,[false]] call BIS_fnc_param;
drug_fuck = 1;
turtle_fuck = 1;
sleep 1;

if(side player == civilian) then {

totaldrugs = life_inv_methu + life_inv_methp + life_inv_cokeu + life_inv_cokep + life_inv_heroinu + life_inv_heroinp + life_inv_cannabis + life_inv_marijuana;

if(life_inv_methu > 0) then { drug_fuck = 2;};
if(life_inv_methp > 0) then { drug_fuck = 2;};
if(life_inv_cokeu > 0) then { drug_fuck = 2;};
if(life_inv_cokep > 0) then { drug_fuck = 2;};
if(life_inv_heroinu > 0) then { drug_fuck = 2;};
if(life_inv_heroinp > 0) then { drug_fuck = 2;};
if(life_inv_cannabis > 0) then { drug_fuck = 2;};
if(life_inv_marijuana > 0) then { drug_fuck = 2;};


if(drug_fuck == 2) then {
	[[1,format["K9 Unit has a scent on drugs!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};

[5] call SOCK_fnc_updatePartial;

};
