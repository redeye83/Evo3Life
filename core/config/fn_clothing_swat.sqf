/*
	File: fn_clothing_swat.sqf
	Author: Bryan "Tonic" Boardwine - Made the template
	
	Description:
        " This file is for SWAT Clothing Shop " 
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"SWAT's Clothing Store"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3L_SWAT",nil,1063],
			["TRYK_U_B_PCUHsW3",nil,1350]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_PASGT_BLK","SWAT PASGT (Black)",300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
            ["G_Bandanna_aviator",nil,100],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["Mask_M40",nil,100],
			["G_Combat",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["SWAT_VEST_BLACK",nil,1125],
			["A3L_negotiatorvest",nil,1125]
		];
	};
	
	//Backpacks
	case 4:
	{
		[

			["AM_PoliceBelt",nil,1800]

		];
	};
};
