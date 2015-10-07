/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price
// Fixed
//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		
			["EMTRM_uni", nil, 50], //In Rangemaster.pbo
			["EMTPRB_uni", nil, 50], //In Rangemaster.pbo
			["A3L_EMT1", nil, 50],
			["A3L_EMT2", nil, 50],
			["fire_uni2", nil, 50],
			["fire_uni1", nil, 50],
			//["emsoff_uni", nil, 50], Broken
			["emt_Uni1", nil, 50],
			["emt_Uni3", nil, 50],
            ["A3L_SARTrooper_Uniform",nil,50],
			["U_B_Wetsuit", nil, 50],
			["paramedic_uni1",nil,50],
			["paramedic_uni2",nil,50]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 20],
			["A3L_medic_helmet", nil, 20],
			["H_MilCap_blue", nil, 20],
            ["A3L_SARTrooper_Cap",nil,20],
            ["A3L_SARTrooper_Helmet",nil,20],
			["H_CrewHelmetHeli_B", nil, 20],
			["H_Cap_blu", nil, 20],
			["H_Cap_red", nil, 20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator", nil, 20],
            ["G_B_Diving", nil, 20],
			["G_I_Diving", nil, 20],
			["SFG_Tac_smallBeardB",nil,1720],
			["SFG_Tac_smallBeardD",nil,1720],
			["SFG_Tac_smallBeardG",nil,1720],
			["SFG_Tac_smallBeardO",nil,1720],
			["SFG_Tac_BeardB",nil,1720],
			["SFG_Tac_BeardD",nil,1720],
			["SFG_Tac_BeardG",nil,1720],
			["SFG_Tac_BeardO",nil,1720],
			["SFG_Tac_chinlessbB",nil,1720],
			["SFG_Tac_chinlessbD",nil,1720],
			["SFG_Tac_chinlessbG",nil,1720],
			["SFG_Tac_chinlessbO",nil,1720],
			["SFG_Tac_moustacheD",nil,1720],
			["SFG_Tac_moustacheG",nil,1720],
			["SFG_Tac_moustacheB",nil,1720],
			["SFG_Tac_moustacheO",nil,1720],
			["SFG_Tac_ChopsB",nil,1720],
			["SFG_Tac_ChopsD",nil,1720],
			["SFG_Tac_ChopsG",nil,1720],
			["SFG_Tac_ChopsO",nil,1720]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVestIR_blk",nil,1125],
			["V_TacVest_blk",nil,1125],
            ["A3L_SARTrooper_Rebreather",nil,375],
			["V_RebreatherB",nil,1125],
			["A3L_EMT_FTO_Vest",nil,375],
			["A3L_emsftovest",nil,375],
			["A3L_emsride",nil,375],
			["A3L_emsftovest2",nil,375],
			["A3L_emsridevest",nil,375]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_ocamo",nil,200],
			["B_Carryall_oucamo",nil,200],
            ["A3L_ANPRC155_Invisible",nil,200],
			["B_TacticalPack_blk",nil,200],
			["tf_anprc155",nil,200],
			["tf_anprc155_coyote",nil,250]
		];
	};
};
