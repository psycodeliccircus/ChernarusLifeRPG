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
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["demian2435_police_man_uniform","Cop Uniform",25]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,550]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["gign_BlackVest","Police Armored Vest",350]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret set[count _ret,["gign_uniform","SWAT Uniform",550]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,75]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_PilotHelmetFighter_O",nil,580]];
			
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_PilotHelmetFighter_O",nil,580]];
			
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_HelmetB_plain_blk",nil,75]];
			_ret set[count _ret,["H_Beret_blk_POLICE","Classy Schultz Beret",120]];
			_ret set[count _ret,["gign_helm","SWAT Helmet",300]];
			_ret set[count _ret,["gign_Balaclava","SWAT Balaclava",120]];
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
			["Mask_M40","Gas Mask",1000]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["gign_BlackVest","Police Armored Vest",1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_mcamo",nil,3500],
			["B_UavTerminal",nil,10000],
			["B_UAV_01_backpack_F",nil,50000]
		];
	};
};

_ret;