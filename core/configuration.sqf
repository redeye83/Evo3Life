#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 10; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_handcuffs = ObjNull;//Handcuffs
life_handcuffkeys = ObjNull;//Handcuff Keys

//Persistent Saving
__CONST__(life_save_civ,FALSE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,false); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,250000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_patrol_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_isdowned = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 30000; //Starting Bank Money
		life_paycheck = 500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 30000; //Starting Bank Money
		life_paycheck = 350; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 30000;
		life_paycheck = 1000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","O_Truck_03_device_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_handcuffs",//Handcuffs
    "life_inv_handcuffkeys"//Handcuff Keys
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
life_pp_points = ["Quick_Stop","Monikute_Market","Zachs_Pit_Stop","Welcome_Break","Lucs_Services","Gas_n_Go","Easy_Stop","Williams_Clothing"];
life_esu_points = ["Quick_Stop","Zachs_Pit_Stop","Welcome_Break","Lucs_Services","Gas_n_Go","Easy_Stop","Williams_Clothing"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]],[["handcuffs",200],["handcuffkeys",100]];//Added cuffs and keys


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",6000],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",5000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",95000],
	["handcuffs",200],//Handcuffs
    ["handcuffkeys",100]//Handcuff Keys
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["handcuffs",500],//Handcuffs
    ["handcuffkeys",300]//Handcuff Keys
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_Black_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["B_Heli_Light_01_F",45000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",7500],
	["A3L_Escort",1000],
	["A3L_EscortTaxi",1000],
	["A3L_EscortBlack",1000],
	["A3L_EscortBlue",1000],
	["A3L_EscortWhite",1000],
	["A3L_EscortPink",1000],
	["A3L_PuntoRed",1000],
	["A3L_PuntoBlack",1000],
	["A3L_PuntoWhite",1000],
	["A3L_PuntoGrey",1000],
	["A3L_RegalBlack",2700],
	["A3L_RegalBlue",2700],
	["A3L_RegalOrange",2700],
	["A3L_RegalRed",2700],
	["A3L_RegalWhite",2700],
	["A3L_Lincoln_Red",3000],
	["A3L_Lincoln_Black",3000],
	["A3L_Lincoln_DarkBlue",3000],
	["A3L_Lincoln_Yellow",3000],
	["A3L_Lincoln_Pink",3000],
	["A3L_Lincoln_Grey",3000],
	["A3L_Lincoln_Purple",3000],
	["A3L_Lincoln_Orange",3000],
	["A3L_Challenger",3500],
	["A3L_ChallengerGreen",3500],
	["A3L_ChallengerRed",3500],
	["A3L_ChallengerBlack",3500],
	["A3L_ChallengerBlue",3500],
	["S_Rangerover_Black",9500],
	["S_Rangerover_Red",9500],
	["S_Rangerover_Blue",9500],
	["S_Rangerover_Green",9500],
	["S_Rangerover_Purple",9500],
	["S_Rangerover_Grey",9500],
	["S_Rangerover_Orange",9500],
	["S_Rangerover_White",9500],
	["BMW_M5Blue",9300],
	["BMW_M5Red",9300],
	["BMW_M5White",9300],
	["BMW_M5Black",9300],
    ["BMW_M5Orange",9300],
    ["BMW_M5Pink",9300],
    ["BMW_M5DarkBlue",9300],
    ["BMW_M5DarkRed",9300],
    ["BMW_M5Burgundy",9300],
    ["BMW_M5Purple",9300],
    ["BMW_M5Grey",9300],
    ["BMW_M5Green",9300],
	["A3L_Taurus",2000],
	["A3L_TaurusBlack",2000],
	["A3L_TaurusBlue",2000],
	["A3L_TaurusRed",2000],
	["A3L_TaurusWhite",2000],
	["DAR_TahoeCivSilver",2000],
	["DAR_TahoeCivBlue",2000],
	["DAR_TahoeCivRed",2000],
	["DAR_TahoeCivBlack",2000],
	["A3L_GrandCaravan",3000],
	["A3L_GrandCaravanBlk",3000],
	["A3L_GrandCaravanBlue",3000],
	["A3L_GrandCaravanGreen",3000],
	["A3L_GrandCaravanRed",3000],
	["A3L_GrandCaravanPurple",3000],
	["A3L_VolksWagenGolfGTired",1000],
	["A3L_VolksWagenGolfGTiblack",1000],
	["A3L_VolksWagenGolfGTiblue",1000],
	["A3L_VolksWagenGolfGTiwhite",1000],
	["A3L_CVWhite",1000],
	["A3L_CVBlack",1000],
	["A3L_CVGrey",1000],
	["A3L_CVRed",1000],
	["A3L_CVPink",1000],
	["A3L_CVBlue",1000],
	["S_Skyline_Red",2000],
	["S_Skyline_Blue",2000],
	["S_Skyline_Black",2000],
	["S_Skyline_Yellow",2000],
	["S_Skyline_Purple",2000],
	["S_Skyline_White",2000],
	["A3L_RX7_Blue",2000],
	["A3L_RX7_Red",2000],
	["A3L_RX7_White",2000],
	["A3L_RX7_Black",2000],
	["tal_maserati_black",5000],
    ["tal_maserati_white",5000],
    ["tal_maserati_grey",5000],
    ["tal_maserati_orange",5000],
    ["tal_maserati_red",5000],
    ["tal_maserati_blue",5000],
    ["tal_maserati_green",5000],
    ["tal_maserati_purple",5000],
    ["tal_maserati_yellow",5000],
    ["tal_maserati_lightblue",5000],
    ["tal_maserati_lime",5000],
    ["tal_maserati_pink",5000],
	["CG_Lamborghini_Aventador_Red", 50000],
	["CG_Lamborghini_Aventador_Black", 50000],
	["CG_Lamborghini_Aventador_Blue", 50000],
	["CG_Lamborghini_Aventador_Green", 50000],
	["CG_Lamborghini_Aventador_Orange", 50000],
	["CG_Lamborghini_Aventador_Purple", 50000],
	["CG_Lamborghini_Aventador_White", 50000],
	["IVORY_LFA",60000],
	["IVORY_REV",60000],
	["A3L_Hyster60",1690],
	["A3L_F350Black",1500],
	["A3L_F350Blue",1500],
	["A3L_F350Red",1500],
	["A3L_F350White",1500],
	["A3L_Bus",22320],
	["Nhz_audia8limo",20000],
	["A3L_TaurusCO2",1000],
	["A3L_jailBus",500],
	["A3L_CVPIFPBCSO",1000],
	["A3L_CVPIFPBLBCSO",1000],
	["EvoXSo2",3500],
	["DAR_ChargerPolice",1500],
	["A3L_TaurusFPBLBCSO",1200],
	["DAR_ExplorerPolice",1500],
	["DAR_TahoePolice",2500],
	["DAR_ChargerPoliceStateSlick",1500],
	["A3L_ChargerUC",1500],
	["DAR_ExplorerPoliceStealth",1500],
	["B_MRAP_01_F",5000],
	["A3L_TaurusUC",1500],
	["A3L_TaurusUCBlue",1000],
	["A3L_TaurusUCGrey",1000],
	["A3L_TaurusUCRed",1000],
	["A3L_TaurusUCWhite",1000],
	["a3l_subaru_police",1500],
	["A3L_CVPIUCPink",1000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",5000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000],
	["A3L_Escort",5000],
	["A3L_EscortTaxi",5000],
	["A3L_EscortBlack",5000],
	["A3L_EscortBlue",5000],
	["A3L_EscortWhite",5000],
	["A3L_EscortPink",5000],
	["A3L_PuntoRed",5000],
	["A3L_PuntoBlack",5000],
	["A3L_PuntoWhite",5000],
	["A3L_PuntoGrey",5000],
	["A3L_RegalBlack",13000],
	["A3L_RegalBlue",13000],
	["A3L_RegalOrange",13000],
	["A3L_RegalRed",13000],
	["A3L_RegalWhite",13000],
	["A3L_Lincoln_Red",15000],
	["A3L_Lincoln_Black",15000],
	["A3L_Lincoln_DarkBlue",15000],
	["A3L_Lincoln_Yellow",15000],
	["A3L_Lincoln_Pink",15000],
	["A3L_Lincoln_Grey",15000],
	["A3L_Lincoln_Purple",15000],
	["A3L_Lincoln_Orange",15000],
	["A3L_Challenger",15000],
	["A3L_ChallengerGreen",15000],
	["A3L_ChallengerRed",15000],
	["A3L_ChallengerBlack",15000],
	["A3L_ChallengerBlue",15000],
	["S_Rangerover_Black",50000],
	["S_Rangerover_Red",50000],
	["S_Rangerover_Blue",50000],
	["S_Rangerover_Green",50000],
	["S_Rangerover_Purple",50000],
	["S_Rangerover_Grey",50000],
	["S_Rangerover_Orange",50000],
	["S_Rangerover_White",50000],
	["BMW_M5Blue",50000],
	["BMW_M5Red",50000],
	["BMW_M5White",50000],
	["BMW_M5Black",50000],
    ["BMW_M5Orange",50000],
    ["BMW_M5Pink",50000],
    ["BMW_M5DarkBlue",50000],
    ["BMW_M5DarkRed",50000],
    ["BMW_M5Burgundy",50000],
    ["BMW_M5Purple",50000],
    ["BMW_M5Grey",50000],
    ["BMW_M5Green",50000],
	["A3L_Taurus",20000],
	["A3L_TaurusBlack",20000],
	["A3L_TaurusBlue",20000],
	["A3L_TaurusRed",20000],
	["A3L_TaurusWhite",20000],
	["DAR_TahoeCivSilver",20000],
	["DAR_TahoeCivBlue",20000],
	["DAR_TahoeCivRed",20000],
	["DAR_TahoeCivBlack",20000],
	["A3L_GrandCaravan",30000],
	["A3L_GrandCaravanBlk",30000],
	["A3L_GrandCaravanBlue",30000],
	["A3L_GrandCaravanGreen",30000],
	["A3L_GrandCaravanRed",30000],
	["A3L_GrandCaravanPurple",30000],
	["A3L_VolksWagenGolfGTired",5000],
	["A3L_VolksWagenGolfGTiblack",5000],
	["A3L_VolksWagenGolfGTiblue",5000],
	["A3L_VolksWagenGolfGTiwhite",5000],
	["A3L_CVWhite",5000],
	["A3L_CVBlack",5000],
	["A3L_CVGrey",5000],
	["A3L_CVRed",5000],
	["A3L_CVPink",5000],
	["A3L_CVBlue",5000],
	["S_Skyline_Red",20000],
	["S_Skyline_Blue",20000],
	["S_Skyline_Black",20000],
	["S_Skyline_Yellow",20000],
	["S_Skyline_Purple",20000],
	["S_Skyline_White",20000],
	["A3L_RX7_Blue",20000],
	["A3L_RX7_Red",20000],
	["A3L_RX7_White",20000],
	["A3L_RX7_Black",20000],
	["tal_maserati_black",50000],
    ["tal_maserati_white",50000],
    ["tal_maserati_grey",50000],
    ["tal_maserati_orange",50000],
    ["tal_maserati_red",50000],
    ["tal_maserati_blue",50000],
    ["tal_maserati_green",50000],
    ["tal_maserati_purple",50000],
    ["tal_maserati_yellow",50000],
    ["tal_maserati_lightblue",50000],
    ["tal_maserati_lime",50000],
    ["tal_maserati_pink",50000],
	["CG_Lamborghini_Aventador_Red", 500000],
	["CG_Lamborghini_Aventador_Black", 500000],
	["CG_Lamborghini_Aventador_Blue", 500000],
	["CG_Lamborghini_Aventador_Green", 500000],
	["CG_Lamborghini_Aventador_Orange", 500000],
	["CG_Lamborghini_Aventador_Purple", 500000],
	["CG_Lamborghini_Aventador_White", 500000],
	["IVORY_LFA",600000],
	["IVORY_REV",600000],
	["A3L_Hyster60",16900],
	["A3L_F350Black",15000],
	["A3L_F350Blue",15000],
	["A3L_F350Red",15000],
	["A3L_F350White",15000],
	["A3L_Bus",223200],
	["Nhz_audia8limo",200000],
	["A3L_TaurusCO2",7000],
	["A3L_jailBus",5000],
	["A3L_CVPIFPBCSO",7000],
	["A3L_CVPIFPBLBCSO",7000],
	["EvoXSo2",35000],
	["DAR_ChargerPolice",15000],
	["A3L_TaurusFPBLBCSO",12000],
	["DAR_ExplorerPolice",15000],
	["DAR_TahoePolice",25000],
	["DAR_ChargerPoliceStateSlick",15000],
	["A3L_ChargerUC",15000],
	["DAR_ExplorerPoliceStealth",15000],
	["B_MRAP_01_F",50000],
	["A3L_TaurusUC",15000],
	["A3L_TaurusUCBlue",10000],
	["A3L_TaurusUCGrey",10000],
	["A3L_TaurusUCRed",10000],
	["A3L_TaurusUCWhite",10000],
	["a3l_subaru_police",15000],
	["A3L_CVPIUCPink",7000]
];
__CONST__(life_garage_sell,life_garage_sell);

//===============Cop Patrol==================
pmissionactive = false;
patrolwaittime = false;
patrolmoneyperkm = 4.0;  // 1 would be equal to $3,000 for 1KM
pmissionactive1 = false;
patrolwaittime1 = false;
patrolmoneyperkm1 = 5.0;  // 1 would be equal to $3,000 for 1KM

//=========== cop patrol array ==========
coppatrolarray  = 
[
getmarkerpos "patrolpoint1k", 
getmarkerpos "patrolpoint2k", 
getmarkerpos "patrolpoint3k", 
getmarkerpos "patrolpoint4k", 
getmarkerpos "patrolpoint5k", 
getmarkerpos "patrolpoint6k", 
getmarkerpos "patrolpoint7k", 
getmarkerpos "patrolpoint9k", 
getmarkerpos "patrolpoint10k"
];