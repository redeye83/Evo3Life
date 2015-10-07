/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;

sleep 15; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Welcome"; //In yellow
_role1names = ["Welcome to EVO 3 Life, Please do not stare directly at the bugs!"]; //In white
_role2 = "Feedback";
_role2names = ["We always appreciate feedback from our community, please let us know how we are doing."]; 
_role3 = "Rules";
_role3names = ["Please make sure you check out our Rules, they can be found on our website. We have some highlights in our briefing area also."];
_role4 = "Website";
_role4names = ["Dont forget to check out our website: www.evo-life.net"];
_role5 = "Police Force";
_role5names = ["Essex County Sheriff's Office is currently recruiting new deputies. Please talk to our recruitment team for more information."];
_role6 = "Medical";
_role6names = ["Essex County Fire and Rescue is currently recruiting. Please visit any fire house for more information."];
_role7 = "Roleplay";
_role7names = ["This is a role play sever, follow the rules, role play every situation, respect other players."];
_role8 = "Recruitment";
_role8names = ["For information about staff recruitment please check out our website: www.evo-life.net"];
_role9 = "Thanks";
_role9names = ["This mission was created by Woods, based on Altis life by Tonic with textures from Mr.Will. We hope you like it."];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.70' color='#0b9df2' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.50' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names]
];