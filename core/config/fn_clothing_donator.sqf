/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Woods's Donator Cloths"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["cg_chickens1",nil,500],
		["cg_et1",nil,500],
		["cg_hand1",nil,500],
		["cg_illuminati1",nil,500],
		["cg_steam1",nil,500],
		["cg_stoned1",nil,500],
		["cg_taylorswift1",nil,500],
		["cg_upyours1",nil,500],
		["cg_woods1",nil,500],
		["cg_strippers1",nil,500],
		["cg_mayan1",nil,500],
		["cg_loading1",nil,500],
		["cg_hearts1",nil,500],
		["cg_deeznuts1",nil,500],
		["cg_dad1",nil,500],
		["cg_awesome1",nil,500],
		["cg_turtles1",nil,500],
		["cg_pika1",nil,500],
		["cg_masterrace1",nil,500],
		["cg_lsd1",nil,500],
		["cg_lambo1",nil,500],
		["cg_kfc1",nil,500],
		["cg_gamerepeat1",nil,500],
		["cg_homer1",nil,500],
		["cg_gameover1",nil,500],
		["cg_fightclub1",nil,500],
		["cg_ferrari1",nil,500],
		["cg_ea1",nil,500],
		["cg_pepsi1",nil,500],
		["cg_mario1",nil,500],
		["cg_lego1",nil,500],
		["cg_burgerking1",nil,500],
		["cg_beats1",nil,500],

		["cg_bb1",nil,500],
		["cg_bipolar1",nil,500],
		["cg_catvideos1",nil,500],
		["cg_condoms1",nil,500],
		["cg_csgo1",nil,500],
		["cg_got1",nil,500],
		["cg_jason1",nil,500],
		["cg_joker1",nil,500],
		["cg_mtv1",nil,500],
		["cg_nike1",nil,500],
		["cg_peanut1",nil,500],
		["cg_superman1",nil,500],
		["cg_tupac1",nil,500],
		["cg_wow1",nil,500],
		["cg_herpderp1",nil,500],
		["cg_iamstupid1",nil,500],
		["cg_imwithstupid1",nil,500],
		["cg_rageface1",nil,500],
		["cg_troll1",nil,500],
		["cg_arsenal1",nil,500],
		["cg_australia1",nil,500],
		["cg_barcelona1",nil,500],
		["cg_brazil1",nil,500],
		["cg_chelsea1",nil,500],
		["cg_manchester1",nil,500],
		["cg_mancity1",nil,500],
		["cg_realmadrid1",nil,500]
		];
	};
	
	//Hats
	case 1:
	{
		[
		["Masque_Alien1",nil,11120],
		["Masque_Anonymous",nil,11120],
		["Masque_Chains",nil,11120],
		["Payday_GeneralO",nil,11120],
		["Casque_Moto",nil,11120],
		["Masque_Clinton",nil,11120],
		["Masque_speedRunner",nil,11120],
		["Masque_Unic",nil,11120],
		["Masque_Aubrey",nil,11120],
		["Masque_Bonnie",nil,11120],
		["Masque_Bush",nil,11120],
		["Masque_Mempo",nil,11120],
		["Masque_Lincoln",nil,11120],
		["Masque_Wolfv2",nil,11120],
		["Masque_archNemesis",nil,11120],
		["Masque_Arnold",nil,11120],
		["Masque_Chuck",nil,11120],
		["Masque_Clover",nil,11120],
		["Masque_Fish",nil,11120],
		["Masque_Hockey",nil,11120],
		["Masque_Metalhead",nil,11120],
		["Masque_Religieuse",nil,11120],
		["Masque_Smiley",nil,11120],
		["Masque_Santa",nil,11120],
		["Masque_Momie",nil,11120],
		["Masque_Optimiste",nil,11120],
		["Masque_forceAlpha",nil,11120],
		["Masque_GdG",nil,11120],
		["Masque_Gombo",nil,11120],
		["Masque_Lion",nil,11120],
		["Masque_Orc",nil,11120],
		["Masque_Mark",nil,11120],
		["Masque_Macrilleuse",nil,11120],
		["Masque_Hoxton",nil,11120],
		["Masque_Incendiaire",nil,11120],
		["Masque_Dallas",nil,11120]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["Masque_Solitaire",nil,250],
			["Mask_M40",nil,500],
			["Mask_M40_OD",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
		["k_cut_2",nil,1000],
		["k_cut_5",nil,1000],
		["k_cut_4",nil,1000],
		["k_cut_3",nil,1000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["kaelmonty",nil,5500],	
			["kaelmonty2",nil,5500],
			["kaelmario",nil,5500],	
			["kaelsuits",nil,5500],	
			["koilbatman_1",nil,5500],	
			["koilbender_1",nil,5500],	
			["koilbender_2",nil,5500],	
			["koilclint_1",nil,5500],	
			["koileminem_1",nil,5500],	
			["koilgraf_1",nil,5500],	
			["koilgraf_2",nil,5500],	
			["koilgraf_3",nil,5500],	
			["koilhulk_1",nil,5500],	
			["koiljoker_1",nil,5500],	
			["koilpumpkin_1",nil,5500],	
			["koilsparta_1",nil,5500],	
			["koilsponge_1",nil,5500],	
			["koilturtles_1",nil,5500],	
			["koilkatie",nil,5500],
			["koilpanda",nil,5500],
			["koilaiden",nil,5500],
			["koileagle",nil,5500],
			["koilspecktators",nil,5500],
			["koildarth",nil,5500],
			["koilgucci",nil,5500],
			["koilsmashing",nil,5500],
			["koilgoonsquad",nil,5500],
			["koilcat",nil,5500],
			["koilbp_19",nil,5500],	
			["koilbp_21",nil,5500],	
			["koilbp_22",nil,5500],
			["koilbp_1",nil,5500],	
			["koilbp_2",nil,5500],	
			["koilbp_3",nil,5500],	
			["koilbp_4",nil,5500],	
			["koilbp_5",nil,5500],	
			["koilbp_6",nil,5500],	
			["koilbp_7",nil,5500],	
			["koilbp_8",nil,5500],	
			["koilbp_9",nil,5500],	
			["koilbp_10",nil,5500],	
			["koilbp_11",nil,5500],	
			["koilbp_12",nil,5500],	
			["koilbp_13",nil,5500],	
			["koilbp_14",nil,5500],	
			["koilbp_15",nil,5500],	
			["koilbp_16",nil,5500],	
			["koilbp_17",nil,5500],	
			["koilbp_18",nil,5500]
		];
	};
};