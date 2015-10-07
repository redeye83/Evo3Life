#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Sheriff Staff only!"};
			default
			{
				["Emita Cop Shop",
					[
						["Taser_26","Taser",1200],
						["26_cartridge",nil,50],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["tf_anprc152", "Radio",1000],
						["prpl_benelli",nil,10000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["prpl_8Rnd_12Gauge_Slug",nil,500]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,1200],
						["tf_anprc148jem_1","Radio",1000],
						["koilmedicwhite","Backpack White",3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Sheriff Staff only, move along bitch!"};
			case (__GETC__(life_coplevel) < 1): {"You are not ready for these bad boys!"};
			default
			{
				["Sheriff Weapon Shop",
					[
						["RH_g19",nil,16468],
						["RH_17Rnd_9x19_g17",nil,656],
						["RH_p226",nil,5902],
						["RH_15Rnd_9x19_SIG",nil,628],
						["RH_m9",nil,7784],
						["RH_15Rnd_9x19_M9",nil,730],
						["RH_m1911",nil,8536],
						["RH_7Rnd_45cal_m1911",nil,972],
						["hlc_smg_mp5k_PDW",nil,18500],
						["hlc_30Rnd_9x19_B_MP5",nil,1346],
						["RH_m4",nil,150000],
						["RH_30Rnd_556x45_M855A1",nil,500],
						["RH_compM2",nil,500],
						["RH_ttracker",nil,15000],
						["RH_6Rnd_45ACP_Mag",nil,500]
					]
				];
			};
		};
	};

	case "cop_arv":
	{
		switch(true) do
		{
			case (playerSide != west): {"You wish you were SWAT!"};
			case (__GETC__(life_coplevel) < 2): {"You are not SWAT!"};
			default
			{
				["SWAT Weapon Shop",
					[
						["FirstAidKit",nil,50],
						["NVGoggles_OPFOR",nil,2000],
						["RH_g19",nil,16468],
						["RH_17Rnd_9x19_g17",nil,656],
						["RH_p226",nil,5902],
						["RH_15Rnd_9x19_SIG",nil,628],
						["RH_m9",nil,7784],
						["RH_15Rnd_9x19_M9",nil,730],
						["RH_kimber_nw",nil,9446],
						["RH_m1911",nil,8536],
						["RH_7Rnd_45cal_m1911",nil,972],
						["30Rnd_9x21_Mag",nil,250],
						["A3L_CZ550",nil,200000],
						["A3L_CZ550Scope",nil,2000],
						["A3L_CZ550mag",nil,900],
						["hlc_smg_mp510",nil,50000],
						["hlc_30Rnd_10mm_B_MP5",nil,1000],
						["optic_Aco",nil,3000],
						["optic_ACO_grn",nil,3000],
						["RH_M4_moe_b",nil,150000],
						["RH_30Rnd_556x45_M855A1",nil,500],
						["RH_eotech553",nil,500],
						["RH_m4covers_f",nil,100],
						["RH_Mk11",nil,200000],
						["RH_m110sd",nil,1000],
						["RH_peq15b",nil,500],
						["RH_pas13cl",nil,1000],
						["RH_20Rnd_762x51_M80A1",nil,1000],
						["RH_M4_ris_m",nil,110000],
						["RH_compm4s",nil,500]
					]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Go home to mommy before I slap you!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant!"};
			default
			{
				["Sergeant's Shop",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MX_Black_F",nil,50000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["RH_M4sbr_b",nil,250000],
						["RH_SFM952V",nil,700],
						["RH_eotech553mag",nil,700],
						["RH_30Rnd_556x45_M855A1",nil,500],
						["RH_SAMR",nil,200000],
						["RH_30Rnd_556x45_Mk262",nil,1000],
						["optic_LRPS",nil,1000],
						["RH_M4A6",nil,200000],
						["RH_30Rnd_68x43_FMJ",nil,1000],
						["RH_ta31rmr_2D",nil,1000],
						["kio_l85a2_pink",nil,500000],
						["30rnd_556_magazine",nil,500],
						["kio_Elcan",nil,2000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["This is no moon",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Xanxth's Pistol Shop",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["RH_Deagleg",nil,50000],
						["RH_Deagles",nil,50000],
						["RH_7Rnd_50_AE",nil,700]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Purple's Shop of Wonders",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,50000],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["A3L_AK47",nil,500000],
						["A3L_AK47Mag",nil,500],
						["A3L_RedDot",nil,500],
						["arifle_SDAR_F",nil,100000],
						["20Rnd_556x45_UW_mag",nil,500],
						["RH_M4sbr_g",nil,700000],
						["RH_30Rnd_556x45_M855A1",nil,500],
						["RH_qdss_nt4_wdl",nil,700],
						["RH_SFM952V",nil,700],
						["RH_eotech553mag",nil,700],
						["RH_ar10",nil,200000],
						["RH_20Rnd_762x51_AR10",nil,300],
						["RH_Delft",nil,500],
						["RH_PDW",nil,100000],
						["RH_30Rnd_6x35_mag",nil,500],
						["RH_pdwsd",nil,1000],
						["RH_SFM952V",nil,500],
						["RH_eotech553",nil,700],
						["tf_fadak_1","Gang Radio",1000],
						["H_Shemag_olive",nil,500],
						["H_Shemag_khk",nil,500],
						["H_ShemagOpen_tan",nil,500],
						["H_ShemagOpen_khk",nil,500],
						["H_Shemag_olive_hs",nil,500],
						["G_Balaclava_blk",nil,500],
						["G_Bandanna_blk",nil,500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Woods' General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemMap",nil,100],
				["ItemWatch",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
