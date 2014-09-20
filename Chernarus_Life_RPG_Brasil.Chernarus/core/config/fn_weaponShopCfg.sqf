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
	case "cop_cadet":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Cadet Shop",
					[
						["SMG_02_F",nil,30000],
						["DDOPP_X26","Taser",2000],
						["DDOPP_1Rnd_X26",nil,50],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
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
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["U_Rangemaster","Medic Uniform",125],
						["B_Kitbag_cbr",nil,800],
			            ["B_FieldPack_cbr",nil,500],
			            ["B_AssaultPack_cbr",nil,700],
			            ["B_Bergen_sgg",nil,2500],
			            ["B_FieldPack_ocamo",nil,3000],
			            ["B_Carryall_cbr",nil,3500],
						["U_Rangemaster","Medic Uniform",125]
					]
				];
			};
		};
	};

	case "cop_private":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Private Shop",
					[		
					    ["hlc_rifle_Bushmaster300",nil,33000],
						["hlc_rifle_RU5562",nil,37000],
						["SMG_02_F",nil,30000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["SmokeShellGreen",nil,5000]
					]
				];
			};
		};
	};

	case "cop_corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Corporal Shop",
					[	
						["arifle_MXC_F",nil,30000],
						["hlc_rifle_Bushmaster300",nil,33000],
						["hlc_rifle_RU5562",nil,37000],
						["SMG_02_F",nil,30000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_ACO_F",nil,15000],
						["muzzle_snds_H",nil,2750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,275],
						["SmokeShellGreen",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
				["Sergeant Shop",
					[	
						["hlc_rifle_SAMR",nil,27000],
						["hlc_rifle_bcmjack",nil,31000],
						["hlc_rifle_Colt727",nil,35000],
						["arifle_MXC_F",nil,30000],
						["hlc_rifle_Bushmaster300",nil,33000],
						["hlc_rifle_RU5562",nil,37000],
						["SMG_02_F",nil,30000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_ACO_F",nil,15000],
						["muzzle_snds_H",nil,2750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,275],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["SmokeShellGreen",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not at a sergeant rank!"};
			default
			{
				["Lieutenant Shop",
					[	
						["arifle_MXM_DMS_F",nil,245000],
						["hlc_rifle_SAMR",nil,27000],
						["hlc_rifle_bcmjack",nil,31000],
						["hlc_rifle_Colt727",nil,35000],
						["arifle_MXC_F",nil,30000],
						["hlc_rifle_Bushmaster300",nil,33000],
						["hlc_rifle_RU5562",nil,37000],
						["SMG_02_F",nil,30000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_ACO_F",nil,15000],
						["muzzle_snds_H",nil,2750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,275],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["SmokeShellGreen",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a sergeant rank!"};
			default
			{
				["Major Shop",
					[	
						["srifle_EBR_F",nil,500000],
						["arifle_MXM_DMS_F",nil,245000],
						["hlc_rifle_SAMR",nil,27000],
						["hlc_rifle_bcmjack",nil,31000],
						["hlc_rifle_Colt727",nil,35000],
						["arifle_MXC_F",nil,30000],
						["hlc_rifle_Bushmaster300",nil,33000],
						["hlc_rifle_RU5562",nil,37000],
						["SMG_02_F",nil,30000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_ACO_F",nil,15000],
						["muzzle_snds_H",nil,2750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,275],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["20Rnd_762x51_Mag",nil,2000],
						["SmokeShellGreen",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_general":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not at a sergeant rank!"};
			default
			{
				["General Shop",
					[	
						["hgun_PDW2000_F",nil,40000],
						["LMG_Zafir_F",nil,600000],
						["srifle_EBR_F",nil,500000],
						["arifle_MXM_DMS_F",nil,245000],
						["hlc_rifle_SAMR",nil,27000],
						["hlc_rifle_bcmjack",nil,31000],
						["hlc_rifle_Colt727",nil,35000],
						["arifle_MXC_F",nil,30000],
						["hlc_rifle_Bushmaster300",nil,33000],
						["hlc_rifle_RU5562",nil,37000],
						["SMG_02_F",nil,30000],
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_ACO_F",nil,15000],
						["muzzle_snds_H",nil,2750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,650],
						["Medikit",nil,1000],
						["ItemWatch",nil,580],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,275],
						["30rnd_556x45_STANAG",nil,250],
						["29rnd_300BLK_STANAG",nil,275],
						["29rnd_300BLK_STANAG_S",nil,275],
						["hlc_30rnd_556x45_EPR",nil,275],
						["hlc_30rnd_556x45_SOST",nil,275],
						["hlc_30rnd_556x45_SPR",nil,275],
						["30Rnd_65x39_caseless_mag",nil,100],
						["20Rnd_762x51_Mag",nil,200],
						["150Rnd_762x51_Box_Tracer",nil,400],
						["SmokeShellGreen",nil,500],
						["R3F_Famas_F1",nil,500],
						["R3F_Famas_F1_DES",nil,520],
						["R3F_Famas_F1_HG",nil,550],
						["R3F_Famas_F1_HG_DES",nil,570],
						["R3F_Famas_G2",nil,60000],
						["R3F_Famas_G2_DES",nil,620],
						["R3F_Famas_G2_HG",nil,650],
						["R3F_Famas_G2_HG_DES",nil,670],
						["R3F_Famas_surb",nil,60000],
						["R3F_Famas_surb_DES",nil,620],
						["R3F_Famas_surb_HG",nil,650],
						["R3F_Famas_surb_HG_DES",nil,670],
						["R3F_HK416M",nil,600],
						["R3F_HK416M_DES",nil,620],
						["R3F_HK416M_HG",nil,620],
						["R3F_HK416M_HG_DES",nil,650],
						["R3F_HK417L",nil,700],
						["R3F_HK417L_DES",nil,720],
						["R3F_HK417M",nil,700],
						["R3F_HK417M_DES",nil,720],
						["R3F_HK417M_HG",nil,720],
						["R3F_HK417M_HG_DES",nil,750],
						["R3F_HK417S_HG",nil,72000],
						["R3F_HK417S_HG_DES",nil,750],
						["R3F_Minimi",nil,800],
						["R3F_Minimi_HG",nil,900],
						["R3F_FRF2",nil,100],
						["R3F_FRF2_DES",nil,110],
						["R3F_25Rnd_556x45_FAMAS",nil,300],
						["R3F_25Rnd_556x45_TRACER_FAMAS",nil,300],
						["R3F_30Rnd_556x45_FAMAS",nil,350],
						["R3F_30Rnd_556x45_TRACER_FAMAS",nil,350],
						["R3F_30Rnd_556x45_HK416",nil,350],
						["R3F_30Rnd_556x45_TRACER_HK416",nil,350],
						["R3F_20Rnd_762x51_HK417",nil,400],
						["R3F_20Rnd_762x51_TRACER_HK417",nil,400],
						["R3F_200Rnd_556x45_MINIMI",nil,500],
						["R3F_10Rnd_762x51_FRF2",nil,400],
						["optic_ACO_grn",nil,350],
						["optic_Holosight",nil,360],
						["acc_flashlight",nil,100],
						["optic_Hamr",nil,8000],
						["HLC_Optic_1p29",nil,230],
						["HLC_Optic_PSO1",nil,2300],
						["NVGoggles_mas_mask",nil,120],
						["NVGoggles_mas_mask2",nil,110],
						["NVGoggles_mas_mask_b",nil,150],
						["NVGoggles_mas_mask2_b",nil,140],
						["NVGoggles_mas_mask_t",nil,130],
						["NVGoggles_mas_mask2_t",nil,120]	
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
			case (!license_civ_rebel): {"You don't have a Russian millitia training license!"};
			default
			{
				["Russian millitia shop",
					[
						["arifle_MXC_Black_F",nil,90000],
						["SMG_01_F",nil,50000],
						["hgun_PDW2000_F",nil,45000],
						["arifle_TRG20_F",nil,30000],
						["hlc_rifle_ak74",nil,27000],
						["hlc_rifle_aks74",nil,33000],
						["hlc_rifle_akm",nil,32000],
						["hlc_rifle_rpk",nil,35000],
						["hlc_rifle_ak47",nil,31200],
						["hlc_rifle_aks74u",nil,25000],
						["RH_ar10",nil,35000],
						["arifle_Katiba_F",nil,60000],
						["srifle_DMR_01_F",nil,70000],
						["arifle_SDAR_F",nil,30000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,8000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hlc_30Rnd_545x39_B_AK",nil,125],
						["hlc_45Rnd_545x39_t_rpk",nil,125],
						["hlc_30Rnd_545x39_EP_AK",nil,125],
						["hlc_30Rnd_762x39_b_ak",nil,125],
						["hlc_75rnd_762x39_m_rpk",nil,125],
						["hlc_muzzle_545SUP_AK",nil,1450],
						["RH_20Rnd_762x51_AR10",nil,125],
						["hlc_muzzle_762SUP_AK",nil,1250],
						["HLC_Optic_1p29",nil,2300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_9x21_Mag",nil,1500],
						["HLC_Optic_PSO1",nil,2300]
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
				["Gun Store",
					[
						["hgun_Rook40_F",nil,10000],
						["ag_mp9",nil,21000],
						["ag_mp9_sidearm",nil,19000],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "donorone":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_donorone): {"You Have Not Donated So You Don't Have Access To Cheap Weapons And Vehicles!"};
			default
			{
				["Normal Donator Shop",
					[
						["LMG_Mk200_F",nil,60000],
						["hgun_PDW2000_F",nil,15000],
						["arifle_Katiba_F",nil,30000],
						["arifle_MXC_F",nil,25000],
						["arifle_MX_SW_F",nil,40000],
						["RH_m4",nil,24500],
						["optic_Arco",nil,3000],
						["optic_Holosight",nil,2500],
						["muzzle_snds_H",nil,3900],
						["200Rnd_65x39_cased_Box",nil,425],
						["30Rnd_65x39_caseless_green",nil,145],
						["30Rnd_65x39_caseless_mag",nil,150],
						["100Rnd_65x39_caseless_mag",nil,175],
						["30Rnd_9x21_Mag",nil,500],
						["30rnd_556x45_STANAG",nil,175]
					]
				];
			};
		};
	};
	
	case "blackmarket":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["SMG_01_F",nil,21000],
						["hgun_ACPC2_F",nil,13000],
						["RH_m4",nil,30000],
						["RH_m4_m203",nil,36400],
						["RH_m16a2",nil,35000],
						["RH_mk12mod1",nil,32000],
						["RH_m4a1_ris",nil,31500],
						["RH_samr",nil,39000],
						["RH_m4sbr_b",nil,34230],
						["RH_m4sbr_g",nil,35500],
						["RH_m4sbr_b",nil,35130],
						["RH_m16a4gl",nil,33000],
						["30Rnd_45ACP_Mag_SMG_01",nil,115],
						["9Rnd_45ACP_Mag",nil,75],
						["RH_30Rnd_556x45_Mk262",nil,225],
						["30rnd_556x45_STANAG",nil,225],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,225],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,225],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,225],
						["1Rnd_HE_Grenade_shell",nil,4000]
					]
				];
			};
		};
	};

	case "donortwo":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_donortwo): {"You Have Not Donated So You Don't Have Access To Cheap Weapons And Vehicles!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["srifle_EBR_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["LMG_Zafir_F",nil,60000],
						["srifle_DMR_01_F",nil,24000],
						["hlc_rifle_ak47",nil,10000],
						["arifle_Katiba_C_F",nil,15000],
						["hgun_Pistol_heavy_01_F",nil,13000],
						["20Rnd_762x51_Mag",nil,2500],
						["150Rnd_762x51_Box",nil,4900],
						["10Rnd_762x51_Mag",nil,25],
						["hlc_30Rnd_762x39_b_ak",nil,45],
						["HLC_Optic_1p29",nil,50],
						["optic_Arco",nil,75],
						["optic_Holosight",nil,2500],
						["muzzle_snds_B",nil,2500],
						["11Rnd_45ACP_Mag",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,5000],
						["30Rnd_65x39_caseless_green",nil,2500]						
					]
				];
			};
		};
	};
	
		case "gasstore":
	{
		["Gas Station Shop",
			[
				["ToolKit",nil,1000],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,6000]
			]
		];
	};
	
	case "genstore":
	{
		["General Store",
			[
				["Binocular",nil,1000],
				["ItemGPS",nil,100],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,5000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
