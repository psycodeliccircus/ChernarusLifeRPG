/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
player forceAddUniform "U_Rangemaster";
player addUniform "U_Rangemaster";
player addbackpack "B_FieldPack_blk";
player addItem "Medikit";
player addItem "ToolKit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
player unlinkItem (hmd player);
};

[] spawn life_fnc_updateClothing;