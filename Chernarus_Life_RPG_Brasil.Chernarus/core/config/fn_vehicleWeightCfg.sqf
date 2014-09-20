/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {450};
	case "B_Truck_01_transport_F": {325};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {285};
	case "O_Truck_03_covered_F": {300};
	case "O_Truck_03_device_F": {350};
	case "UH1H": {50};
	case "CH_47F": {185};
	case "HMMWV": {85};
	case "GNT_C185F": {200};
	case "IVORY_CRJ200_1": {500};
	case "GNT_C185": {350};
    case "Cha_Mi17_Civilian": {200};
	case "DAR_MK23A": {_weight = 400;};
	case "DAR_MK23AD": {_weight = 400;};
	case "DAR_MK27": {_weight = 400;};
	case "DAR_MK27T": {_weight = 400;};
	case "DAR_4X4": {_weight = 400;};
	case "DAR_MK23": {_weight = 400;};
	case "DAR_TahoeCivBlack": {_weight = 80;};
	case "DAR_TahoeCivBlue": {_weight = 80;};
	case "DAR_TahoeCivRed": {_weight = 80;};
	case "DAR_TahoeCivSilver": {_weight = 80;};
	case "DAR_TahoeCiv": {_weight = 80;};
	case "DAR_FusionCivBlack": {_weight = 65;};
	case "DAR_FusionCivBlue": {_weight = 65;};
	case "DAR_FusionCivRed": {_weight = 65;};
	case "DAR_FusionCiv": {_weight = 65;};
	case "DAR_TaurusCivBlack": {_weight = 65;};
	case "DAR_TaurusCivBlue": {_weight = 65;};
	case "DAR_TaurusCiv": {_weight = 65;};
	case "SAL_AudiCivBlack": {_weight = 65;};
	case "SAL_AudiCivRed": {_weight = 65;};
	case "SAL_AudiCivSilver": {_weight = 65;};
	case "SAL_AudiCiv": {_weight = 65;};
	case "DAR_ChargerCiv": {_weight = 65;};
	case "DAR_Charger_Blue": {_weight = 65;};
	case "DAR_ChallengerCivBlack": {_weight = 65;};
	case "DAR_ChallengerCivOrange": {_weight = 65;};
	case "DAR_ChallengerCivRed": {_weight = 65;};
	case "DAR_ChallengerCivWhite": {_weight = 65;};		
	case "DAR_M3CivBlack": {_weight = 65;};
	case "DAR_M3CivGrey": {_weight = 65;};
	case "DAR_M3CivWhite": {_weight = 65;};
	case "Jonzie_96_Impala": {_weight = 65;};
	case "Orel_Agora": {_weight = 100;};
/*
          ----VEHICULE DE POLICE----
*/
	case "DAR_CVPIPolice": {_weight = 65;};
	case "DAR_CVPIAux": {_weight = 65;};
	case "DAR_CVPISlick": {_weight = 65;};
	case "DAR_TahoePoliceSlick": {_weight = 80;};
	case "DAR_TahoePolice": {_weight = 80;};
	case "DAR_ImpalaPolice": {_weight = 65;};
	case "DAR_ImpalaPoliceSlick": {_weight = 65;};
	case "DAR_TaurusPolice": {_weight = 65;};
	case "DAR_TaurusPoliceState": {_weight = 65;};
	case "DAR_TaurusPoliceStateSlick": {_weight = 65;};
	case "DAR_ChargerPolice": {_weight = 65;};
	case "DAR_ChargerPoliceState": {_weight = 65;};
	case "DAR_ChargerPoliceStateSlick": {_weight = 65;};
	case "GIGN_heli": {_weight = 25;};
	case "CH_47F": {_weight = 150;};
	case "MV22": {_weight = 175;};
	case "Jonzie_96_Impala_Unmarked": {_weight = 65;};
	case "GIGN_Hunter": {_weight = 65;};
	case "Orel_Dingo": {_weight = 65;};
    case "DAR_SWATPolice": {_weight = 120;};
/*
          ----VEHICULE AERIEN----
*/
	case "B_Heli_Light_01_F": {_weight = 150;};
	case "O_Heli_Light_02_unarmed_F": {_weight = 155;};
	case "I_Heli_Transport_02_F": {_weight = 100;};
	default {-1};
};