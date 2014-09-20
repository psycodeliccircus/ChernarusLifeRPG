/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donator Clothing Shop"];

switch (_filter) do
{
	//Uniforms
        case 0:
        {
                [
                        ["U_IG_Guerilla1_1",nil,500],
                        ["U_IG_Menelaos,nil,530],
                        ["U_BG_Guerilla1_1",nil,550],
                        ["U_I_CombatUniform_shortsleeve,nil,580],
                        ["U_MillerBody,nil,6000],
                        ["U_I_G_Story_Protagonist_F",nil,750],
                        ["U_I_OfficerUniform,nil,800],
                        ["U_B_CTRG_1,nil,900],
                        ["U_I_G_resistanceLeader_F",nil,115],
                        ["U_O_SpecopsUniform_ocamo",nil,175],
                        ["U_O_PilotCoveralls",nil,156],
                        ["U_IG_leader","Guerilla Leader",153],
                        ["U_O_GhillieSuit",nil,500],
						["U_C_Poloshirt_blue","Poloshirt Blue",250],
						["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
						["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
						["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
						["U_C_Poloshirt_stripped","Poloshirt African Rasta",125],
						["U_C_Poloshirt_tricolour","Poloshirt AK-47",350],
						["U_C_Poor_2","Rag tagged clothes",250],
						["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
						["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
						["U_IG_Guerilla2_3","The Outback Rangler",120],
						["U_C_HunterBody_grn","The Hunters Look",150],
						["U_C_WorkerCoveralls","Mechanic Coveralls",250],
						["U_OrestesBody","Surfing On Land",110],
						["chernalife_ID",nil,750],
						["dolce_ID",nil,750],
						["domina_ID",nil,750],
						["hello_kitty_ID",nil,200],
						["skyline_ID",nil,750],
						["U_C_Journalist","Tenue de Journaliste",750],
						["vip_clothes","Tenue de VIP",285],
						["U_NikosBody","Tenue de Niko's",120],
						["U_PMC_BluePlaidShirt_BeigeCords","Uniforme 1",750],
						["U_PMC_RedPlaidShirt_DenimCords","Uniforme 2",750],
						["U_PMC_BlackPoloShirt_BeigeCords","Uniforme 3",750],
						["U_PMC_BluPolo_BgPants","Uniforme 4",750],
						["U_PMC_BgPolo_GrnPants","Uniforme 5",750],
						["U_PMC_BlckPolo_BgPants","Uniforme 6",750],
						["U_PMC_BlckPolo_BluPants","Uniforme 7",750],
						["U_PMC_WhtPolo_GrnPants","Uniforme 8",750]
						
                ]
        };
       
        //Hats
        case 1:
        {
                [
                        ["H_ShemagOpen_tan",nil,850],
                        ["H_Booniehat_mcamo,nil,500],
                        ["H_Shemag_olive",nil,850],
                        ["H_ShemagOpen_khk",nil,800],
                        ["H_HelmetO_ocamo",nil,2500],
                        ["H_MilCap_oucamo",nil,1200],
                        ["H_Bandanna_camo",nil,650],
                        ["H_Cap_blk_CMMG",nil,400],
                        ["H_PilotHelmetFighter_O",nil,55000],		
						["H_Bandanna_camo","Camo Bandanna",120],
						["H_Bandanna_surfer","Surfer Bandanna",130],
						["H_Bandanna_gry","Grey Bandanna",150],
						["H_Bandanna_cbr",nil,165],
						["H_Bandanna_surfer",nil,135],
						["H_Bandanna_khk","Khaki Bandanna",145],
						["H_Bandanna_sgg","Sage Bandanna",160],
						["H_StrawHat","Straw Fedora",225],
						["H_BandMask_blk","Hat & Bandanna",300],
						["H_Booniehat_tan",nil,425],
						["H_Hat_blue",nil,310],
						["H_Hat_brown",nil,276],
						["H_Hat_checker",nil,340],
						["H_Hat_grey",nil,280],
						["H_Hat_tan",nil,265],
						["H_Cap_blu",nil,150],
						["H_Cap_grn",nil,150],
						["H_Cap_grn_BI",nil,150],
						["H_Cap_oli",nil,150],
						["H_Cap_red",nil,150],
						["H_Cap_tan",nil,150],
						["Balaclava_Black",nil,500],
						["Balaclava_GRY",nil,500],
						["L_Shemagh_Red",nil,500],
						["L_Shemagh_Tan",nil,500],
						["L_shemagh_white",nil,500],
						["Shemagh_Face",nil,500],
						["Shemagh_FaceTan",nil,500],
						["Shemagh_FaceRed",nil,500],
						["Shemagh_FaceGry",nil,500],
						["Kio_Afro_Hat",nil,100],
						["Kio_Hat",nil,100],
						["Kio_Capital_Hat",nil,100],
						["Kio_Pirate_Hat",nil,100],
						["Kio_No1_Hat",nil,100],
						["Kio_Spinning_Hat",nil,100]
                ];
        };
       
        //Glasses
        case 2:
        {
                [
                        ["G_Shades_Black",nil,25],
                        ["G_Shades_Blue",nil,20],
                        ["G_Sport_Blackred",nil,20],
                        ["G_Sport_Checkered",nil,20],
                        ["G_Sport_Blackyellow",nil,20],
                        ["G_Sport_BlackWhite",nil,20],
                        ["G_Squares",nil,10],
                        ["G_Lowprofile",nil,30],
                        ["G_Combat",nil,55],
						["G_Aviator",nil,100],
						["G_Lady_Mirror",nil,150],
						["G_Lady_Dark",nil,150],
						["G_Lady_Blue",nil,150],
						["G_Lowprofile",nil,30],
						["kio_vfv_mask",nil,100]
                ];
        };
       
        //Vest
        case 3:
        {
                [
                        ["V_TacVest_khk",nil,125],
                        ["V_TacVest_brn,nil,125],
                        ["V_BandollierB_cbr",nil,450],
                        ["V_PlateCarrier1_blk,nil,550],
                        ["V_I_G_resistanceLeader_F,nil,600],
                        ["V_HarnessO_brn",nil,750],
                        ["V_PlateCarrierIAGL_dgtl,nil,180],
                        ["V_HarnessOGL_brn",nil,350],
                        ["V_HarnessOGL_gry",nil,250]
                ];
        };
       
        //Backpacks
        case 4:
        {
                [
                        ["B_AssaultPack_cbr",nil,250],
                        ["B_Kitbag_mcamo",nil,450],
                        ["B_TacticalPack_oli",nil,350],
                        ["B_FieldPack_ocamo",nil,300],
                        ["B_Bergen_sgg",nil,450],
                        ["B_Kitbag_cbr",nil,450],
                        ["B_Carryall_oli",nil,500],
                        ["B_AssaultPack_cbr",nil,250],
						["B_Carryall_khk",nil,500],
						["B_Parachute",nil,150]
                ];
        };
};