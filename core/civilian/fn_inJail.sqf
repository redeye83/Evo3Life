/* 
  Author:  Panda
  Profile: http://steamcommunity.com/profiles/76561198145366418/
  File: fn_inJail.sqf
  Description: Sets Custom Loadout when in Jail.
*/

//Now strip him.
removeUniform player;
removeBackpack player;
removeHeadgear player;
removeVest player;
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeGoggles player;
//Add our Prison Uniform.
player addUniform "A3L_Prisoner_Outfit";

//Add food and drink Also check if he dosent have food and drink already to stop Multiple donuts + coffee been given out.
if(life_inv_donut < 1) then
{
	life_inv_donut = life_inv_donut + 1;
};

if(life_inv_coffee < 1) then
{
	life_inv_coffee = life_inv_coffee + 1;
};
