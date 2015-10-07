/* 
  Author:  Panda
  Profile: http://steamcommunity.com/profiles/76561198145366418/
  File: fn_outOfJail.sqf
  Description: Sets old uniform when released.
*/
	removeUniform player;
	sleep 1;
	player addUniform "EVO_Civ_Clothing_Beta";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	hint "You have been released, have a nice day.";
	[] execVM "statusBar.sqf";