// Virtual Arsenal Supporter Customization - 
// by CRE4MPIE
// Inspired by fn_r3m3dy - thx xD
// PS: Arrays are a bitch


// Remember to change your createvehicle.txt to log for logic only and not kick ( 3 "^Logic")
// Add exception to antihack for BIS_fnc_arsenal,bis_fnc_setidentity in filterExecAttempt.sqf
// payload.sqf	if (!isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull]) && !_isAdmin) exitWith { _cheatFlag = "Virtual Arsenal" };



// Supporter Loadout  
_supportersEnabled = ["A3W_supportersEnabled"] call isConfigOn;
_supporterLevel = player getVariable ["supporter", 0];


switch (_supporterLevel) do {	
		case 1: // Supporter
			{			
			
				_crate = "Box_East_Ammo_F";		
				["Open",_crate] call BIS_fnc_arsenal;
				[_crate,[true],true] call BIS_fnc_addVirtualMagazineCargo;

				[_crate,[

				// Backpacks
				"B_AssaultPack_blk",
				"B_AssaultPack_rgr",
				"B_AssaultPack_mcamo",
				"B_AssaultPack_ocamo",

				"B_FieldPack_blk",
				"B_FieldPack_cbr",
				"B_FieldPack_ocamo",
				"B_FieldPack_khk",
				"B_FieldPack_oli",
				"B_FieldPack_oucamo",

				"B_Kitbag_cbr",
				"B_Kitbag_rgr",
				"B_Kitbag_mcamo",
				"B_Kitbag_sgg",

				"B_Bergen_blk",
				"B_Bergen_rgr",
				"B_Bergen_mcamo",
				"B_Bergen_sgg",

				"B_Carryall_cbr",
				"B_Carryall_ocamo",
				"B_Carryall_khk",
				"B_Carryall_mcamo",
				"B_Carryall_oli",
				"B_Carryall_oucamo",

				// Static Designator
				"B_Static_Designator_01_weapon_F",
				"O_Static_Designator_02_weapon_F"
				
				],true] call BIS_fnc_addVirtualBackpackCargo;
				
				[_crate,[

				// Handguns
				"CUP_hgun_Colt1911",
	            "CUP_hgun_Compact",
	            "CUP_hgun_Duty_M3X",
	            "CUP_hgun_Glock17",
	            "CUP_hgun_M9",
	            "CUP_hgun_Makarov",
	            "CUP_hgun_PB6P9_snds",
	            "CUP_hgun_MicroUzi",
	            "CUP_hgun_Phantom_Flashlight",
	            "CUP_hgun_TaurusTracker455",
	            "CUP_hgun_TaurusTracker455_gold",
	            "CUP_hgun_SA61",
	            "CUP_hgun_Duty",
	            "CUP_hgun_Phantom",
	            "CUP_arifle_CZ805_A1",
	            "CUP_arifle_CZ805_GL",
	            "CUP_arifle_CZ805_B",
	            "CUP_arifle_CZ805_B_GL",
				"hgun_Pistol_heavy_01_F",
				"hgun_ACPC2_F",
				"hgun_P07_F",
				"hgun_Rook40_F",
				"hgun_Pistol_Signal_F",
				"hgun_Pistol_heavy_02_F",

				// Rifles
				"CUP_arifle_AK47",
	            "CUP_arifle_AKS74",
	            "CUP_arifle_AK107",
	            "CUP_arifle_AK107_GL",
	            "CUP_arifle_AK74",
	            "CUP_arifle_AKS74U",
	            "CUP_arifle_AK74_GL",
	            "CUP_arifle_AKM",
	            "CUP_arifle_AKS",
	            "CUP_arifle_AKS_Gold",
	            "CUP_arifle_RPK74",
	            "CUP_smg_bizon",
	            "CUP_lmg_PKM",
	            "CUP_lmg_Pecheneg_PScope",
	            "CUP_sgun_Saiga12K",
	            "CUP_srifle_SVD_pso",
	            "CUP_srifle_SVD_Des_pso",
	            "CUP_srifle_SVD_wdl_ghillie",
	            "CUP_srifle_SVD_des_ghillie_pso",
	            "CUP_srifle_VSSVintorez_pso",

	            // BAF Weapons
	            "CUP_srifle_AS50_SBPMII",
	            "CUP_srifle_AWM_des_SBPMII",
	            "CUP_srifle_AWM_wdl_SBPMII",
	            "CUP_lmg_L7A2",
	            "CUP_lmg_L110A1",
	            "CUP_arifle_L85A2",
	            "CUP_arifle_L85A2_GL",
	            "CUP_arifle_L86A2",


	            // Czech Weapons
	            "CUP_srifle_CZ750_SOS_bipod",
	            "CUP_arifle_CZ805_A2",
	            "CUP_arifle_Sa58P",
	            "CUP_arifle_Sa58V",
	            "CUP_arifle_Sa58P_des",
	            "CUP_arifle_Sa58V_camo",
	            "CUP_arifle_Sa58RIS1",
	            "CUP_arifle_Sa58RIS1_des",
	            "CUP_arifle_Sa58RIS2",
	            "CUP_arifle_Sa58RIS2_camo",
	            "CUP_smg_EVO",
	            "CUP_lmg_UK59",

	            // PMC Weaponns
	            "CUP_arifle_XM8_Carbine",
	            "CUP_arifle_XM8_Railed",
	            "CUP_arifle_XM8_Carbine_FG",
	            "CUP_arifle_XM8_Carbine_GL",
	            "CUP_arifle_XM8_Compact",
	            "CUP_arifle_XM8_Compact_Rail",
	            "CUP_arifle_xm8_SAW",
	            "CUP_arifle_xm8_sharpshooter",

	            // US Weapons
	            "CUP_srifle_DMR_LeupoldMk4",
	            "CUP_glaunch_M32",
	            "CUP_glaunch_Mk13",
	            "CUP_srifle_M14",
	            "CUP_arifle_M16A2",
	            "CUP_arifle_M16A2_GL",
	            "CUP_arifle_M16A4_Base",
	            "CUP_arifle_M16A4_GL",
	            "CUP_arifle_M4A1",
	            "CUP_arifle_M4A1_camo",
	            "CUP_arifle_M4A1_BUIS_Base",
	            "CUP_arifle_M4A1_BUIS_GL",
	            "CUP_arifle_M4A1_BUIS_camo_GL",
	            "CUP_arifle_M4A1_BUIS_desert_GL",
	            "CUP_srifle_Mk12SPR_LeupoldM3LR",
	            "CUP_srifle_M24_wdl_LeupoldMk4LRT",
	            "CUP_srifle_M24_des_LeupoldMk4LRT",
	            "CUP_srifle_M40A3",
	            "CUP_lmg_M60A4",
	            "CUP_srifle_M107_LeupoldVX3",
	            "CUP_srifle_M110_ANPAS13c2",
	            "CUP_lmg_M240",
	            "CUP_lmg_minimipara", 
	            "CUP_lmg_minimi", 
	            "CUP_lmg_m249_para", 
	            "CUP_lmg_M249_E2", 
	            "CUP_lmg_minimi_railed", 
	            "CUP_lmg_m249_pip1", 
	            "CUP_lmg_m249_pip2", 
	            "CUP_lmg_m249_pip3", 
	            "CUP_lmg_m249_pip4", 
	            "CUP_lmg_m249_SQuantoon",
	            "CUP_sgun_M1014",
	            "CUP_lmg_Mk48_des",
	            "CUP_lmg_Mk48_wdl",
	            "CUP_arifle_Mk16_CQC",
	            "CUP_arifle_Mk16_CQC_FG",
	            "CUP_arifle_Mk16_CQC_SFG",
	            "CUP_arifle_Mk16_CQC_EGLM",
	            "CUP_arifle_Mk16_STD",
	            "CUP_arifle_Mk16_STD_FG",
	            "CUP_arifle_Mk16_STD_SFG",
	            "CUP_arifle_Mk16_STD_EGLM",
	            "CUP_arifle_Mk16_SV",
	            "CUP_srifle_DMR",

	            // Insurgent Weapons
	            "CUP_arifle_FNFAL",
	            "CUP_arifle_FNFAL_railed",
	            "CUP_glaunch_M79",
	            "CUP_srifle_CZ550",
	            "CUP_srifle_ksvk_PSO3",
	            "CUP_srifle_LeeEnfield",

	            // Bundeswehr Weapons
	            "CUP_arifle_G36A",
	            "CUP_arifle_G36A_camo",
	            "CUP_arifle_G36K",
	            "CUP_arifle_G36K_camo",
	            "CUP_arifle_G36C",
	            "CUP_arifle_G36C_camo",
	            "CUP_arifle_MG36",
	            "CUP_arifle_MG36_camo",
	            "CUP_smg_MP5SD6",
	            "CUP_smg_MP5A5",
				"srifle_DMR_04_F",
				"srifle_DMR_04_Tan_F",
				"srifle_DMR_05_blk_F",
				"srifle_DMR_05_hex_F",
				"srifle_DMR_05_tan_f",
				"srifle_GM6_F",
				"srifle_GM6_camo_F",
				"arifle_Katiba_F",
				"arifle_Katiba_C_F",
				"arifle_Katiba_GL_F",
				"srifle_LRR_F",
				"srifle_LRR_camo_F",
				"srifle_DMR_02_F",
				"srifle_DMR_02_camo_F",
				"srifle_DMR_02_sniper_F",
				"srifle_DMR_03_F",
				"srifle_DMR_03_multicam_F",
				"srifle_DMR_03_khaki_F",
				"srifle_DMR_03_tan_F",
				"srifle_DMR_03_woodland_F",
				"srifle_DMR_06_camo_F",
				"srifle_DMR_06_olive_F",
				"srifle_EBR_F",
				"arifle_Mk20_plain_F",
				"arifle_Mk20_F",
				"arifle_Mk20_GL_plain_F",
				"arifle_Mk20_GL_F",
				"LMG_Mk200_F",
				"arifle_Mk20C_plain_F",
				"arifle_Mk20C_F",
				"arifle_MX_GL_F",
				"arifle_MX_GL_Black_F",
				"arifle_MX_F",
				"arifle_MX_Black_F",
				"arifle_MX_SW_F",
				"arifle_MX_SW_Black_F",
				"arifle_MXC_F",
				"arifle_MXC_Black_F",
				"arifle_MXM_F",
				"arifle_MXM_Black_F",
				"MMG_01_hex_F",
				"MMG_01_tan_F",
				"hgun_PDW2000_F",
				"srifle_DMR_01_F",
				"arifle_SDAR_F",
				"MMG_02_black_F",
				"MMG_02_camo_F",
				"MMG_02_sand_F",
				"SMG_02_F",
				"arifle_TRG20_F",
				"arifle_TRG21_F",
				"arifle_TRG21_GL_F",
				"SMG_01_F",
				"LMG_Zafir_F",

				// Launchers
				"launch_RPG32_F",
				"CUP_launch_Igla",
	            "CUP_launch_9K32Strela",
	            "CUP_launch_Javelin",
	            "CUP_launch_M136",
	            "CUP_launch_Metis",
	            "CUP_launch_NLAW",
	            "CUP_launch_RPG7V",
	            "CUP_launch_RPG18",
	            "CUP_launch_Mk153Mod0_SMAWOptics",
	            "CUP_launch_FIM92Stinger",

				// Random
				"Rangefinder",
				"Laserdesignator",
				"Laserdesignator_02",
				"Laserdesignator_03",
				"Binocular",
				"CUP_Vector21Nite",
	            "CUP_SOFLAM"

				],true] call BIS_fnc_addVirtualWeaponCargo;
									
				[_crate,[
				// Accessories
				"CUP_muzzle_PBS4",
	            "CUP_muzzle_PB6P9",
	            "CUP_muzzle_Bizon",
	            "CUP_muzzle_snds_AWM",
	            "CUP_muzzle_snds_G36_black",
	            "CUP_muzzle_snds_G36_desert",
	            "CUP_muzzle_snds_L85",
	            "CUP_muzzle_snds_M16_camo",
	            "CUP_muzzle_snds_M16",
	            "CUP_muzzle_snds_SCAR_L",
	            "CUP_muzzle_mfsup_SCAR_L",
	            "CUP_muzzle_snds_SCAR_H",
	            "CUP_muzzle_mfsup_SCAR_H",
	            "CUP_muzzle_snds_XM8",
				"muzzle_snds_L",
				"muzzle_snds_acp",
				"muzzle_snds_M",
				"muzzle_snds_H",
				"muzzle_snds_H_MG",
				"muzzle_snds_B",
				"muzzle_snds_338_black",
				"muzzle_snds_338_green",
				"muzzle_snds_338_sand",
				"muzzle_snds_93mmg",
				"muzzle_snds_93mmg_tan",
				"bipod_01_F_blk",
				"bipod_02_F_blk",
				"bipod_03_F_blk",
				"bipod_01_F_mtp",
				"bipod_02_F_hex",
				"bipod_03_F_oli",
				"bipod_01_F_snd",
				"bipod_02_F_tan",
				"acc_flashlight",
				"acc_pointer_IR",
				"CUP_optic_PSO_1",
	            "CUP_optic_PSO_3",
	            "CUP_optic_Kobra",
	            "CUP_optic_GOSHAWK",
	            "CUP_optic_NSPU",
	            "CUP_optic_PechenegScope",
	            "CUP_optic_SB_3_12x50_PMII",
	            "CUP_optic_AN_PAS_13c2",
	            "CUP_optic_LeupoldMk4",
	            "CUP_optic_HoloBlack",
	            "CUP_optic_HoloWdl",
	            "CUP_optic_HoloDesert",
	            "CUP_optic_Eotech533",
	            "CUP_optic_Eotech533Grey",
	            "CUP_optic_CompM4",
	            "CUP_optic_SUSAT",
	            "CUP_optic_ACOG",
	            "CUP_optic_CWS",
	            "CUP_optic_Leupold_VX3",
	            "CUP_optic_AN_PVS_10",
	            "CUP_optic_CompM2_Black",
	            "CUP_optic_CompM2_Woodland",
	            "CUP_optic_CompM2_Woodland2",
	            "CUP_optic_CompM2_Desert",
	            "CUP_optic_RCO",
	            "CUP_optic_RCO_desert",
	            "CUP_optic_LeupoldM3LR",
	            "CUP_optic_LeupoldMk4_10x40_LRT_Desert",
	            "CUP_optic_LeupoldMk4_10x40_LRT_Woodland",
	            "CUP_optic_ElcanM145",
	            "CUP_optic_AN_PAS_13c1",
	            "CUP_optic_LeupoldMk4_CQ_T",
	            "CUP_optic_ELCAN_SpecterDR",
	            "CUP_optic_LeupoldMk4_MRT_tan",
	            "CUP_optic_SB_11_4x20_PM",
	            "CUP_optic_ZDDot",
	            "CUP_optic_MRad",
	            "CUP_optic_TrijiconRx01_desert",
	            "CUP_optic_TrijiconRx01_black",
	            "CUP_optic_AN_PVS_4",
				"optic_Holosight",
				"optic_MRD",
				"optic_Hamr",
				"optic_aco_smg",
				"optic_Yorris",
				"optic_Holosight_smg",
				"optic_Aco",
				"optic_Aco_grn",
				"optic_MRCO",
				"optic_Arco",
				"optic_DMS",
				"optic_SOS",
				"optic_AMS",
				"optic_AMS_khk",
				"optic_AMS_snd",
				"optic_KHS_blk",
				"optic_KHS_hex",
				"optic_KHS_old",
				"optic_KHS_tan",
				"optic_LRPS",
				"optic_NVS",
				"optic_tws",

				// Vests
				"V_RebreatherB",
				"V_RebreatherIR",
				"V_RebreatherIA",
				"V_PlateCarrier1_rgr",
				"V_PlateCarrier1_blk",
				"V_PlateCarrier3_rgr",
				"V_PlateCarrierGL_rgr",
				"V_PlateCarrierGL_blk",
				"V_PlateCarrierGL_mtp",
				"V_PlateCarrierIA1_dgtl",
				"V_PlateCarrierIA2_dgtl",
				"V_PlateCarrierIAGL_dgtl",
				"V_PlateCarrierIAGL_oli",
				"V_HarnessO_brn",
				"V_HarnessO_gry",
				"V_HarnessOGL_brn",
				"V_HarnessOGL_gry",
				"V_HarnessOSpec_brn",
				"V_HarnessOSpec_gry",
				"V_BandollierB_blk",
				"V_BandollierB_cbr",
				"V_BandollierB_rgr",
				"V_BandollierB_khk",
				"V_BandollierB_oli",
				"V_Chestrig_khk",
				"V_Chestrig_rgr",
				"V_Chestrig_blk",
				"V_Chestrig_oli",
				"V_TacVest_blk",
				"V_TacVest_brn",
				"V_TacVest_camo",
				"V_TacVest_khk",
				"V_TacVest_oli",
				"V_TacVest_blk_POLICE",
				"V_I_G_resistanceLeader_F",
				"V_TacVestIR_blk",
				"V_PlateCarrierL_CTRG",
				"V_PlateCarrierH_CTRG",
				"V_PlateCarrierSpec_rgr",
				"V_PlateCarrierSpec_blk",
				"V_PlateCarrierSpec_mtp",
				"V_Press_F",

				// Items
				"Medikit",
				"ToolKit",
				"MineDetector",
				// "Rangefinder",
				"FirstAidKit",
				// "Laserdesignator",
				"NVGoggles_OPFOR",
				"NVGoggles_INDEP",
				"Chemlight_blue",
				"Chemlight_green",
				"Chemlight_yellow",
				"Chemlight_red",
				"ItemGPS",
				"I_UavTerminal",
				"O_UavTerminal",
				"B_UavTerminal",
				"ItemMap",
				"ItemCompass",
				"ItemWatch",
				"NVGoggles",
				"ItemRadio",

				// Goggles
				"G_Aviator",
				"G_Diving",
				"G_Balaclava_blk",
				"G_Balaclava_oli",
				"G_Balaclava_combat",
				"G_Balaclava_lowprofile",
				"G_Bandanna_aviator",
				"G_Bandanna_beast",
				"G_Bandanna_blk",
				"G_Bandanna_khk",
				"G_Bandanna_oli",
				"G_Bandanna_shades",
				"G_Bandanna_sport",
				"G_Bandanna_tan",
				"G_Combat",
				"G_Goggles_VR",
				"G_Lady_Blue",
				"G_Lady_Dark",
				"G_Lady_Mirror",
				"G_Lady_Red",
				"G_Lowprofile",
				"G_Shades_Black",
				"G_Shades_Blue",
				"G_Shades_Green",
				"G_Shades_Red",
				"G_Spectacles",
				"G_Spectacles_Tinted",
				"G_Sport_Blackred",
				"G_Sport_BlackWhite",
				"G_Sport_Blackyellow",
				"G_Sport_Checkered",
				"G_Sport_Greenblack",
				"G_Sport_Red",
				"G_Squares",
				"G_Squares_Tinted",
				"G_Tactical_Black",
				"G_Tactical_Clear",

				// All Clothing
				"U_OrestesBody",
				"U_I_G_resistanceLeader_F",
				"U_B_GhillieSuit",
				"U_O_GhillieSuit",
				"U_I_GhillieSuit",
				"U_B_FullGhillie_ard",
				"U_O_FullGhillie_ard",
				"U_I_FullGhillie_ard",
				"U_B_FullGhillie_lsh",
				"U_O_FullGhillie_lsh",
				"U_I_FullGhillie_lsh",
				"U_B_FullGhillie_sard","U_O_FullGhillie_sard",
				"U_I_FullGhillie_sard",
				"U_B_Wetsuit",
				"U_O_Wetsuit",
				"U_I_Wetsuit",
				"U_B_CombatUniform_mcam",
				"U_O_CombatUniform_ocamo",
				"U_I_CombatUniform",
				"U_B_CombatUniform_mcam_tshirt",
				"U_B_CombatUniform_mcam_vest",
				"U_B_SpecopsUniform_sgg",
				"U_B_CTRG_1",
				"U_B_CTRG_2",
				"U_B_CTRG_3",
				"U_O_SpecopsUniform_ocamo",
				"U_O_CombatUniform_oucamo",
				"U_I_CombatUniform_shortsleeve",
				"U_I_CombatUniform_tshirt",
				"U_O_OfficerUniform_ocamo",
				"U_I_OfficerUniform",
				"U_B_PilotCoveralls",
				"U_O_PilotCoveralls",
				"U_I_pilotCoveralls",
				"U_B_HeliPilotCoveralls",
				"U_I_HeliPilotCoveralls",
				"U_BG_Guerilla1_1",
				"U_BG_Guerilla2_1",
				"U_BG_Guerilla2_2",
				"U_BG_Guerilla2_3",
				"U_BG_Guerilla3_1",
				"U_BG_Guerilla3_2",
				"U_BG_leader",
				"U_OG_Guerilla1_1",
				"U_OG_Guerilla2_1",
				"U_OG_Guerilla2_2",
				"U_OG_Guerilla2_3",
				"U_OG_Guerilla3_1",
				"U_OG_Guerilla3_2",
				"U_OG_leader",
				"U_IG_Guerilla1_1",
				"U_IG_Guerilla2_1",
				"U_IG_Guerilla2_2",
				"U_IG_Guerilla2_3",
				"U_IG_Guerilla3_1",
				"U_IG_Guerilla3_2",
				"U_IG_leader",
				"U_Competitor",
				"U_Rangemaster",
				"U_B_Protagonist_VR",
				"U_O_Protagonist_VR",
				"U_I_Protagonist_VR",
				"U_C_WorkerCoveralls",
				"U_C_Poor_1",
				"U_C_Poloshirt_redwhite",
				"U_C_Poloshirt_salmon",
				"U_C_Poloshirt_tricolour",
				"U_C_Poloshirt_blue",
				"U_C_Poloshirt_burgundy",
				"U_C_Poloshirt_stripped",
				"U_C_Driver_1_black",
				"U_C_Driver_1_blue",
				"U_C_Driver_1_green",
				"U_C_Driver_1_yellow",
				"U_C_Driver_1_orange",
				"U_C_Driver_1_red",
				"U_C_Driver_1_white",
				"U_C_Driver_1",
				"U_C_Driver_2",
				"U_C_Driver_3",
				"U_C_Driver_4",

				// All Headgear
				"H_HelmetB",
				"H_HelmetB_camo",
				"H_HelmetB_light",
				"H_HelmetB_paint",
				"H_HelmetSpecB",
				"H_HelmetSpecB_blk",
				"H_HelmetSpecB_paint1",
				"H_HelmetSpecB_paint2",
				"H_HelmetB_plain_blk",
				"H_HelmetO_ocamo",
				"H_HelmetO_oucamo",
				"H_HelmetLeaderO_ocamo",
				"H_HelmetLeaderO_oucamo",
				"H_HelmetSpecO_blk",
				"H_CrewHelmetHeli_B",
				"H_CrewHelmetHeli_O",
				"H_CrewHelmetHeli_I",
				"H_PilotHelmetHeli_B",
				"H_PilotHelmetHeli_O",
				"H_PilotHelmetHeli_I",
				"H_HelmetCrew_B",
				"H_HelmetCrew_O",
				"H_HelmetCrew_I",
				"H_PilotHelmetFighter_B",
				"H_PilotHelmetFighter_O",
				"H_PilotHelmetFighter_I",
				"H_MilCap_blue",
				"H_MilCap_gry",
				"H_MilCap_oucamo",
				"H_MilCap_rucamo",
				",H_MilCap_mcamo",
				"H_MilCap_ocamo",
				"H_MilCap_dgtl",
				"H_Cap_headphones",
				"H_Bandanna_cbr",
				"H_Bandanna_camo",
				"H_Bandanna_gry",
				"H_Bandanna_khk",
				"H_Bandanna_mcamo",
				"H_Bandanna_sgg",
				"H_Bandanna_surfer",
				"H_Watchcap_blk",
				"H_Watchcap_sgg",
				"H_Watchcap_cbr",
				"H_Watchcap_khk",
				"H_Watchcap_camo",
				"H_Beret_blk",
				"H_Beret_Colonel",
				"H_Beret_02",
				"H_Booniehat_khk",
				"H_Booniehat_tan",
				"H_Booniehat_mcamo",
				"H_Booniehat_dgtl",
				"H_Hat_blue",
				"H_Hat_brown",
				"H_Hat_camo",
				"H_Hat_checker",
				"H_Hat_grey",
				"H_Hat_tan",
				"H_Cap_blk",
				"H_Cap_blu",
				"H_Cap_grn",
				"H_Cap_oli",
				"H_Cap_red",
				"H_Cap_tan",
				"H_Cap_grn_BI",
				"H_Cap_blk_CMMG",
				"H_Cap_blk_ION",
				"H_Cap_blk_Raven",
				"H_Cap_khaki_specops_UK",
				"H_Cap_tan_specops_US",
				"H_Cap_brn_SPECOPS",
				"H_ShemagOpen_khk",
				"H_ShemagOpen_tan",
				"H_Shemag_khk",
				"H_Shemag_olive",
				"H_Shemag_tan",
				"H_RacingHelmet_1_black_F",
				"H_RacingHelmet_1_blue_F",
				"H_RacingHelmet_1_green_F",
				"H_RacingHelmet_1_yellow_F",
				"H_RacingHelmet_1_orange_F",
				"H_RacingHelmet_1_red_F",
				"H_RacingHelmet_1_white_F",
				"H_RacingHelmet_1_F",
				"H_RacingHelmet_2_F",
				"H_RacingHelmet_3_F",
				"H_RacingHelmet_4_F",
				"H_HelmetSpecO_ocamo",
				"H_HelmetIA_net",
				"H_HelmetIA_camo",
				"H_BandMask_blk",
				"H_BandMask_demon",
				"H_BandMask_khk",
				"H_BandMask_reaper"	
					  
				],true] call BIS_fnc_addVirtualItemCargo;

				systemChat format["Welcome %1, Enjoy your Supporter Loadout!", name player];
		};	
};

waitUntil {isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull])};
	


	