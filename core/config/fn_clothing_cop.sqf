#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Emita Sheriff Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if (__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["doj_uni","DOC Uniform",500];
		};
		
		if (__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Tan_Pvt","Sheriff Uniform Tan",1000];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Tan_Crpl","Sheriff Uniform Tan",1000];
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Grey_Crpl","Sheriff Uniform Grey",1500];
			_ret pushBack ["TCG_PDAV","Pilot Uniform",1500];
			_ret pushBack ["EVO_Police_Uniform_SWAT_Crpl","SWAT Uniform",1500];
			_ret pushBack ["KAEL_SUITS_BR_F12","Detective Suit",3000];
		};
		
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Tan_Sgt","Sheriff Uniform Tan",1000];
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Grey_Sgt","Sheriff Uniform Grey",1500];
			_ret pushBack ["TCG_PDAV","Pilot Uniform",1500];
			_ret pushBack ["EVO_Police_Uniform_SWAT_Sgt","SWAT Uniform",1500];
			_ret pushBack ["KAEL_SUITS_BR_F12","Detective Suit",3000];
			_ret pushBack ["TCG_PDDTC","Detective Casual",3000];
		};
		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Tan_Lt","Sheriff Uniform Tan",1000];
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Grey_Lt","Sheriff Uniform Grey",1500];
			_ret pushBack ["TCG_PDAV","Pilot Uniform",1500];
			_ret pushBack ["EVO_Police_Uniform_SWAT_Lt","SWAT Uniform",1500];
			_ret pushBack ["KAEL_SUITS_BR_F12","Detective Suit",3000];
			_ret pushBack ["TCG_PDDTC","Detective Casual",3000];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Tan_Cpt","Sheriff Uniform Tan",1000];
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Grey_Cpt","Sheriff Uniform Grey",1500];
			_ret pushBack ["TCG_PDAV","Pilot Uniform",1500];
			_ret pushBack ["EVO_Police_Uniform_SWAT_Cpt","SWAT Uniform",1500];
			_ret pushBack ["KAEL_SUITS_BR_F12","Detective Suit",3000];
			_ret pushBack ["TCG_PDDTC","Detective Casual",3000];
		};
		
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Tan_Gen","Sheriff Uniform Tan",1000];
			_ret pushBack ["EVO_Police_Uniform_Sheriff_Grey_Gen","Sheriff Uniform Grey",1500];
			_ret pushBack ["TCG_PDAV","Pilot Uniform",1500];
			_ret pushBack ["EVO_Police_Uniform_SWAT_Gen","SWAT Uniform",1500];
			_ret pushBack ["KAEL_SUITS_BR_F12","Detective Suit",3000];
			_ret pushBack ["TCG_PDDTC","Detective Casual",3000];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["Campaign_Hat_Washedout", "Sheriff Hat",500];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["Campaign_Hat_Dark", "Sheriff Hat Black",1500];
			_ret pushBack ["H_HelmetB_black","SWAT Helmet",1500];
			_ret pushBack ["H_HelmetB_light_black", "SWAT Tactical Helmet",1500];
			_ret pushBack ["H_PilotHelmetHeli_B","Pilots Helmet",1000];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_Cap_police","Detective Hat",1000];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["Mask_M40","Gas Mask",500],
			["G_Balaclava_blk",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["A3L_deptjvest1","DOC Vest",1000];
		};
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["k_green2_so","Patrol Vest",1000];
		};
		
		if (__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["k_black_so","Patrol Vest Black",1000];
			_ret pushBack ["Jamie_Sheriff2","SWAT Vest Light",1500];
			_ret pushBack ["Jamie_Sheriff1","SWAT Vest Heavy",1500];
			_ret pushBack ["V_TacVest_blk_POLICE","Detective Vest",1500];
		};
		
		if (__GETC__(life_coplevel) >3) then
		{
			_ret pushBack ["k_red_so","Instructor Vest",1000];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret pushBack ["AM_PoliceBelt","Duty Belt",1000];
	};
};

_ret;