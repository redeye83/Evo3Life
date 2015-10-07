#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return pushBack 
		["cg_mercedes_sprinter_ems",10000];
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return pushBack
			["jonzie_ambulance",30000];
		};
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack
			["cg_evoems1",70000];
		};
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return pushBack
			["A3L_ExplorerEMS_S",70000];
		};
	};
	
	case "med_air_hs": 
	{
		_return pushBack
		["ivory_b206_rescue",50000];
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack
			["IVORY_BELL512_RESCUE",200000];
		};
	
	};
	
	case "civ_car":
	{
		_return = 
		[
			["C_Hatchback_01_F",20000],
			["C_Offroad_01_F",20000],
			
			["Jonzie_Mini_Cooper",10000],
			
			["B_Quadbike_01_F",10000],
			["A3L_CVWhite",10000],
			["A3L_CVBlack",10000],
			["A3L_CVGrey",10000],
			["A3L_CVRed",10000],
			["A3L_CVPink",10000],
			["A3L_CVBlue",10000],
			
			["A3L_Escort",10000],
			["A3L_EscortTaxi",10000],
			["A3L_EscortBlack",10000],
			["A3L_EscortBlue",10000],
			["A3L_EscortWhite",10000],
			["A3L_EscortPink",10000],
			
			["A3L_VolksWagenGolfGTired",10000],
			["A3L_VolksWagenGolfGTiblack",10000],
			["A3L_VolksWagenGolfGTiblue",10000],
			["A3L_VolksWagenGolfGTiwhite",10000],
			
			["A3L_PuntoRed",10000],
			["A3L_PuntoBlack",10000],
			["A3L_PuntoWhite",10000],
			["A3L_PuntoGrey",10000],
			
			["A3L_Taurus",40000],
			["A3L_TaurusBlack",40000],
			["A3L_TaurusBlue",40000],
			["A3L_TaurusRed",40000],
			["A3L_TaurusWhite",40000],
			["DAR_TahoeCivSilver",40000],
			["DAR_TahoeCivBlue",40000],
			["DAR_TahoeCivRed",40000],
			["DAR_TahoeCivBlack",40000],
			
			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000]
		];
	};
	
	case "sports_car":
	{
		_return =
		[
			["A3L_Challenger",35000],
			["A3L_ChallengerGreen",35000],
			["A3L_ChallengerRed",35000],
			["A3L_ChallengerBlack",35000],
			["A3L_ChallengerBlue",35000],
			
			["S_Skyline_Red",45000],
			["S_Skyline_Blue",45000],
			["S_Skyline_Black",45000],
			["S_Skyline_Yellow",45000],
			["S_Skyline_Purple",45000],
			["S_Skyline_White",45000],
			
			["A3L_RX7_Blue",50000],
			["A3L_RX7_Red",50000],
			["A3L_RX7_White",50000],
			["A3L_RX7_Black",50000],
			
			["C_SUV_01_F",60000],
			
			["A3L_ChargerBlack",50000],
			["A3L_ChargerWhite",50000],
			
			["S_Rangerover_Black",95000],
			["S_Rangerover_Red",95000],
			["S_Rangerover_Blue",95000],
			["S_Rangerover_Green",95000],
			["S_Rangerover_Purple",95000],
			["S_Rangerover_Grey",95000],
			["S_Rangerover_Orange",95000],
			["S_Rangerover_White",95000],
			
			["A3L_BMW135Black",93000],
			["A3L_BMW135Blue",93000],
			["A3L_BMW135Sport1",93000],
			["A3L_BMW135Sport3",93000],
            ["A3L_BMW135Sport5",93000],
            ["A3L_BMW135Sport2",93000],
            ["A3L_BMW135Sport4",93000],
            ["A3L_BMW135Purple",93000],
            ["A3L_BMW135Red",93000],
            ["A3L_BMW135White",93000],
            ["A3L_EvoXBlack",93000],
			["A3L_EvoXDarkGreen",93000],
			["A3L_OffGreen",93000],
			["A3L_EvoXOffYellow",93000],
			["A3L_EvoXPink",93000],
			["A3L_EvoXPurple",93000],
			["A3L_EvoXRed",93000],
			["A3L_EvoXWhite",93000],
			["A3L_EvoXYellow",93000],
			
			["IVORY_R8",100000],
			["IVORY_R8SPYDER",100000],
			
			["tal_maserati_black",100000],
            ["tal_maserati_white",100000],
            ["tal_maserati_grey",100000],
            ["tal_maserati_orange",100000],
            ["tal_maserati_red",100000],
            ["tal_maserati_blue",100000],
            ["tal_maserati_green",100000],
            ["tal_maserati_purple",100000],
            ["tal_maserati_yellow",100000],
            ["tal_maserati_lightblue",100000],
            ["tal_maserati_lime",100000],
            ["tal_maserati_pink",100000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["A3L_Hyster60",16900],
			
			["A3L_F350Black",35000],
			["A3L_F350Blue",35000],
			["A3L_F350Red",35000],
			["A3L_F350White",35000],
			
			["C_Van_01_box_F",96000],
			["C_Van_01_transport_F",65000],
			
			["A3L_Bus",446400],
			
			["Nhz_audia8limo",512000],
			["O_Truck_03_device_F",500000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_return pushBack
			["A3L_TaurusCO2",15000];
			_return pushBack
			["A3L_jailBus",10000];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack
			["A3L_CVPIFPBCSO",15000];
			_return pushBack
			["A3L_CVPIFPBLBCSO",15000];
			_return pushBack
			["EvoXSo2",70000];
			//_return pushBack
			//["DAR_ChargerPolice",35000];
			_return pushBack
			["A3L_TaurusFPBLBCSO",27000];
			_return pushBack
			["DAR_ExplorerPolice",35000];
			_return pushBack
			["DAR_TahoePolice",47000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			//_return pushBack
			//["DAR_ChargerPoliceStateSlick",35000];
			//_return pushBack
			//["A3L_ChargerUC",35000];
			_return pushBack
			["DAR_ExplorerPoliceStealth",35000];
			_return pushBack
			["B_MRAP_01_F",100000];
			_return pushBack
			["A3L_TaurusUC",20000];
			_return pushBack
			["A3L_TaurusUCBlue",20000];
			_return pushBack
			["A3L_TaurusUCGrey",20000];
			_return pushBack
			["A3L_TaurusUCRed",20000];
			_return pushBack
			["A3L_TaurusUCWhite",20000];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["a3l_subaru_police",35000];
			_return pushBack
			["A3L_CVPIUCPink",15000];
		};
	};
	
	case "cop_doc":
	{
		_return =
		[
			["A3L_TaurusCO2",10000],
			["A3L_jailBus",5000]
		];
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "civ_exotic":
	{
		_return =
		[
			["CG_Lamborghini_Aventador_Red", 1000000],
			["CG_Lamborghini_Aventador_Black", 1000000],
			["CG_Lamborghini_Aventador_Blue", 1000000],
			["CG_Lamborghini_Aventador_Green", 1000000],
			["CG_Lamborghini_Aventador_Orange", 1000000],
			["CG_Lamborghini_Aventador_Purple", 1000000],
			["CG_Lamborghini_Aventador_White", 1000000],
			["IVORY_LFA",1100000],
			["IVORY_REV",1100000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack
			["ivory_b206_police",50000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["IVORY_BELL512_POLICE",200000];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",50000]; //lynx
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000]; //blackhawk
			_return pushBack
			["I_Heli_Transport_02_F",500000]; //merlin
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
