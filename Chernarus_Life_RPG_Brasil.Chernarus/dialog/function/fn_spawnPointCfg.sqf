#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		[
			["cop_spawn_1","UN HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","UN Naval HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_3","UN Checkpoint 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_4","UN Checkpoint 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_5","UN Checkpoint 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case civilian:
	{
                [
			["civ_spawn_1","Cherno","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Electro","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Vehicle Centre","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_air","Air Garage","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_donor_1","Donor Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["militia_spawn_1","Militia Spawn 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["militia_spawn","Militia Spawn 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_221","Militia Spawn 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};

	case independent: {
		[
			["medic_spawn_1","Berezino Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1_1","Cherno Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};