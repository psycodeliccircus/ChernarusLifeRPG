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
		_return = [
			["C_Offroad_01_F",0],
			["DAR_TahoeEMS",0],
			["C_SUV_01_F",0],
			["I_Truck_02_medical_F",0],
			["O_Truck_03_medical_F",0],
			["B_Truck_01_medical_F",0],
			["B_Heli_Light_01_F",0],
			["O_Heli_Light_02_unarmed_F",0]
			
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",60000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000]
		];
	};

	case "civ_donortwo":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["Jonzie_96_Impala",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["DAR_ChargerCiv",50000]];
			_return set[count _return,["DAR_ChallengerCivBlack",55000]];
			_return set[count _return,["DAR_Charger_Blue",50000]];
			_return set[count _return,["DAR_ChallengerCivOrange",55000]];
			_return set[count _return,["DAR_ChallengerCivRed",55000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["DAR_MF1Civ",120000]];
			_return set[count _return,["DAR_MF1Burgundy",120000]];
			_return set[count _return,["DAR_MF1Orange",120000]];
			_return set[count _return,["DAR_MF1Red",120000]];
			_return set[count _return,["DAR_MF1Silver",120000]];
		};
	};

	case "civ_donorone":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["Jonzie_96_Impala",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["DAR_ChargerCiv",50000]];
			_return set[count _return,["DAR_ChallengerCivBlack",55000]];
			_return set[count _return,["DAR_Charger_Blue",50000]];
			_return set[count _return,["DAR_ChallengerCivOrange",55000]];
			_return set[count _return,["DAR_ChallengerCivRed",55000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["DAR_MF1Civ",120000]];
			_return set[count _return,["DAR_MF1Burgundy",120000]];
			_return set[count _return,["DAR_MF1Orange",120000]];
			_return set[count _return,["DAR_MF1Red",120000]];
			_return set[count _return,["DAR_MF1Silver",120000]];
		};
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",175000],
			["I_Truck_02_covered_F",300000],
			["B_Truck_01_transport_F",425000],
			["O_Truck_03_transport_F",500000],
			["O_Truck_03_covered_F",650000],
			["B_Truck_01_box_F",850000],
			["O_Truck_03_device_F",750000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",275000],
			["B_Heli_Light_01_F",325000],
			["CH_47F",1000000],
			["UH1H",750000],
			["HMMWV",115000],
			["HMMWV_M2",500000],
			["HMMWV_MK19",550000]	
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",40000]];
		_return set[count _return,
		["HMMWV2",75000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",70000]];
			_return set[count _return,
			["I_MRAP_03_F",70000]];
			_return set[count _return,
			["HMMWV2_M2",215000]];
			_return set[count _return,
			["HMMWV2_MK19",210000]];
			_return set[count _return,
			["HMMWV_M1151_M2",250000]];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_return set[count _return,
			["C_Offroad_01_F",1]];
			_return set[count _return,
			["DAR_CVPIPolice",1]];
			_return set[count _return,
			["DAR_CVPIAux",1]];
			_return set[count _return,
			["DAR_CVPISlick",1]];
			_return set[count _return,
			["DAR_TahoeEMS",1]];
			_return set[count _return, 
			["DAR_TahoePoliceSlick",1]];
			_return set[count _return,                  
			["DAR_TahoePoliceDet",1]];
			_return set[count _return,
			["DAR_TahoePolice",1]];
			_return set[count _return,
			["DAR_ImpalaPolice",1]];
			_return set[count _return,
			["DAR_ImpalaPoliceSlick",1]];
			_return set[count _return,
			["DAR_TaurusPolice",1]];
			_return set[count _return,
			["DAR_ChargerPolice",1]];
			_return set[count _return,
			["DAR_ChargerPoliceState",1]];
			_return set[count _return,
			["DAR_ChargerPoliceStateSlick",1]]; 
			_return set[count _return, 
			["Jonzie_96_Impala_Unmarked",1]];
			_return set[count _return,
			["DAR_SWATPolice",1]];
			_return set[count _return, 
			["Orel_Dingo",1]];
			_return set[count _return,
			["DAR_ExplorerPolice",1]];
			_return set[count _return,
			["DAR_ExplorerPoliceStealth",1]];    
			_return set[count _return,
			["GIGN_Hunter",1]];
			_return set[count _return,
			["DAR_DAR_02FirebirdSSVPolice",1]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",223000],
			["O_Heli_Light_02_unarmed_F",550000],
			["Cha_Mi17_Civilian",600000],
		    ["GNT_C185",200000],
			["GNT_C185F",217000],
			["IVORY_CRJ200_1",500000]
		];
	};
	
	case "civ_airplane":
	{
		_return =
		[
		    ["GNT_C185",85000],
			["GNT_C185F",117000],
			["IVORY_CRJ200_1",300000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",300000]];
			_return set[count _return,
			["Cha_Mi17_UN_CDF_EP1",250000]];
			_return set[count _return,
			["UH1Y",400000]];
			_return set[count _return,
			["UH60M",500000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",350000]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
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
