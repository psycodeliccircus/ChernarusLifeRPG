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
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",2500],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",2750],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",1500],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",1750],
		["U_C_Poloshirt_stripped","Poloshirt stripped",1250],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",3500],
		["U_C_Poor_2","Rag tagged clothes",2500],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",6500],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",7350],
		["U_IG_Guerilla2_3","The Outback Rangler",1200],
		["U_C_HunterBody_grn","The Hunters Look",1500],
		["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
		["U_OrestesBody","Surfing On Land",1100],
		["chernalife_ID",nil,7500],
		["dolce_ID",nil,7500],
		["domina_ID",nil,7500],
		["virtual493_ID",nil,7500],
		["hello_kitty_ID",nil,2000],
		["skyline_ID",nil,7500],
		["U_C_Journalist","Tenue de Journaliste",7500],
		["vip_clothes","Tenue de VIP",2850],
		["U_NikosBody","Tenue de Niko's",1200],
		["U_PMC_BluePlaidShirt_BeigeCords","Uniforme 1",7500],
		["U_PMC_RedPlaidShirt_DenimCords","Uniforme 2",7500],
		["U_PMC_BlackPoloShirt_BeigeCords","Uniforme 3",7500],
		["U_PMC_BluPolo_BgPants","Uniforme 4",7500],
		["U_PMC_BgPolo_GrnPants","Uniforme 5",7500],
		["U_PMC_BlckPolo_BgPants","Uniforme 6",7500],
		["U_PMC_BlckPolo_BluPants","Uniforme 7",7500],
		["U_PMC_WhtPolo_GrnPants","Uniforme 8",7500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",1200],
			["H_Bandanna_surfer","Surfer Bandanna",1300],
			["H_Bandanna_gry","Grey Bandanna",1500],
			["H_Bandanna_cbr",nil,1650],
			["H_Bandanna_surfer",nil,1350],
			["H_Bandanna_khk","Khaki Bandanna",1450],
			["H_Bandanna_sgg","Sage Bandanna",1600],
			["H_StrawHat","Straw Fedora",2250],
			["H_BandMask_blk","Hat & Bandanna",3000],
			["H_Booniehat_tan",nil,4250],
			["H_Hat_blue",nil,3100],
			["H_Hat_brown",nil,2760],
			["H_Hat_checker",nil,3400],
			["H_Hat_grey",nil,2800],
			["H_Hat_tan",nil,2650],
			["H_Cap_blu",nil,1500],
			["H_Cap_grn",nil,1500],
			["H_Cap_grn_BI",nil,1500],
			["H_Cap_oli",nil,1500],
			["H_Cap_red",nil,1500],
			["H_Cap_tan",nil,1500],
			["Kio_Afro_Hat","Coupe Afro",3000],
			["Kio_Capital_Hat","Chapeau de Lincoln",3000],
			["Kio_No1_Hat","Chapeau N1",3000],
			["Kio_Pirate_Hat","Chapeau de Pirate",3000],
			["Kio_Santa_Hat","Bonnet du Pere Noel",3000],
			["Kio_Spinning_Hat","Chapeau d'enfant",3000],
			["Balaclava_Black",nil,1000],
			["Balaclava_GRY",nil,1000],
			["L_Shemagh_Red",nil,1000],
			["L_Shemagh_Tan",nil,1000],
			["L_shemagh_white",nil,1000],
			["Shemagh_Face",nil,1500],
			["Shemagh_FaceTan",nil,1500],
			["Shemagh_FaceRed",nil,1500],
			["Shemagh_FaceGry",nil,1500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Aviator",nil,1000],
			["G_Lady_Mirror",nil,1500],
			["G_Lady_Dark",nil,1500],
			["G_Lady_Blue",nil,1500],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};