//BW CALLS
if (worldName == "tanoa") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
if (worldName == "chernarus_summer") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
if (worldName == "chernarus_winter") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
if (worldName == "Enoch") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
if (worldName == "Temblelan") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
if (worldName == "vt7") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
if (worldName == "rhspkl") exitWith {call compile preProcessFileLineNumbers "Templates\BWMOD_Occ_BW_Wdl.sqf"};
////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "BW";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "BWA3_Faction_Tropen";
//Miltia Faction
if ((gameMode != 4) and (!hasFFAA)) then {factionFIA = ""};

//Flag Images
NATOFlag = "BWA3_Flag_Germany";
NATOFlagTexture = "bwa3_common\data\bwa3_flag_germany_co.paa";
flagNATOmrk = "flag_Germany";
if (isServer) then {"NATO_carrier" setMarkerText "Gorch Fock"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["BWmod_KSK_teamLeader_multi"] call A3A_fnc_getLoadout,
	//Medic
	["BWmod_KSK_medic_multi"] call A3A_fnc_getLoadout,
	//Autorifleman
	["BWmod_KSK_machineGunner_multi"] call A3A_fnc_getLoadout,
	//Marksman
	["BWmod_KSK_marksman_multi"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["BWmod_KSK_AT_multi"] call A3A_fnc_getLoadout,
	//AT2
	["BWmod_KSK_AT2_multi"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["BWA3_Eagle_Tropen","BWA3_Eagle_FLW100_Tropen","B_Quadbike_01_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "BWA3_Rifleman_Tropen";
NATOOfficer = "BWA3_Officer_Tropen";
NATOOfficer2 = "BWA3_Tank_Commander_Tropen";
NATOBodyG = "BWA3_TL_Tropen";
NATOCrew = "BWA3_Crew_Tropen";
NATOUnarmed = "BWA3_Rifleman_unarmed_Tropen";
NATOMarksman = "BWA3_Marksman_Tropen";
staticCrewOccupants = "BWA3_Rifleman_Tropen";
NATOPilot = "BWA3_Helipilot";

//Militia Units
if ((gameMode != 4) and (!hasFFAA)) then
	{
	FIARifleman = "BWA3_Rifleman_Multi";
	FIAMarksman = "BWA3_Marksman_Multi";
	};

//Police Units
policeOfficer = "BWA3_Officer_Tropen";
policeGrunt = "BWA3_Officer_Tropen";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["BWA3_Grenadier_Tropen",NATOGrunt];
groupsNATOSniper = ["BWA3_Sniper_G29_Tropen","BWA3_Spotter_Tropen"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper];
//Fireteams
groupsNATOAA = ["BWA3_TL_Tropen","BWA3_MachineGunner_MG4_Tropen","BWA3_Rifleman_Tropen","BWA3_RiflemanAA_Fliegerfaust_Tropen"];
groupsNATOAT = ["BWA3_TL_Tropen","BWA3_MachineGunner_MG4_Tropen","BWA3_Rifleman_Tropen","BWA3_RiflemanAT_RGW90_Tropen"];
groupsNATOmid = [["BWA3_TL_Tropen","BWA3_MachineGunner_MG5_Tropen","BWA3_Rifleman_Tropen","BWA3_RiflemanAT_CG_Tropen"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["BWA3_SL_Tropen","BWA3_TL_Tropen","BWA3_MachineGunner_MG5_Tropen","BWA3_Rifleman_G27_Tropen","BWA3_MachineGunner_MG5_Tropen","BWA3_Rifleman_G27_Tropen","BWA3_Marksman_Tropen","BWA3_Medic_Tropen"];
NATOSpecOp = ["BWA3_recon_TL_Tropen","BWA3_recon_Radioman_Tropen","BWA3_recon_Tropen","BWA3_recon_Marksman_Tropen","BWA3_recon_LAT_Tropen","BWA3_recon_Pioneer_Tropen","BWA3_recon_Tropen","BWA3_recon_Medic_Tropen"];
groupsNATOSquad =
	[
	NATOSquad,
	["BWA3_SL_Tropen","BWA3_MachineGunner_MG4_Tropen","BWA3_RiflemanAT_PzF3_Tropen","BWA3_RiflemanAT_PzF3_Tropen","BWA3_Grenadier_G27_Tropen","BWA3_RiflemanAT_RGW90_Tropen","BWA3_RiflemanAT_RGW90_Tropen","BWA3_Medic_Tropen"],
	["BWA3_SL_Tropen","BWA3_MachineGunner_MG4_Tropen","BWA3_RiflemanAT_PzF3_Tropen","BWA3_Grenadier_G27_Tropen","BWA3_Grenadier_G27_Tropen","BWA3_RiflemanAA_Fliegerfaust_Tropen","BWA3_Rifleman_Tropen","BWA3_Medic_Tropen"],
	["BWA3_SL_Tropen","BWA3_TL_Tropen","BWA3_MachineGunner_MG5_Tropen","BWA3_Rifleman_G27_Tropen","BWA3_MachineGunner_MG5_Tropen","BWA3_Rifleman_G27_Tropen","BWA3_Engineer_Tropen","BWA3_Medic_Tropen"]
	];

//Militia Groups
if ((gameMode != 4) and (!hasFFAA)) then
	{
	//Teams
	groupsFIASmall =
		[
		["BWA3_Grenadier_G27_Multi","BWA3_Rifleman_Multi"],
		["BWA3_Marksman_Multi","BWA3_Rifleman_Multi"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["BWA3_TL_Multi","BWA3_MachineGunner_MG3_Multi","BWA3_MachineGunner_MG3_Multi_assist","BWA3_Grenadier_G27_Multi"],
		["BWA3_TL_Multi","BWA3_RiflemanAT_PzF3_Multi","BWA3_RiflemanAT_PzF3_Multi","BWA3_Grenadier_G27_Multi"]
		];
	//Squads
	FIASquad = ["BWA3_SL_Multi","BWA3_MachineGunner_MG3_Multi","BWA3_MachineGunner_MG3_Multi_assist","BWA3_Rifleman_Multi","BWA3_RiflemanAT_PzF3_Multi","BWA3_RiflemanAT_PzF3_Multi","BWA3_Grenadier_G27_Multi","BWA3_Medic_Multi"];
	groupsFIASquad = [FIASquad];
	};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer,policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "B_Quadbike_01_F";
vehNATOLightArmed = ["BWA3_Eagle_FLW100_Tropen","rhsusf_m1025_d_s_m2","rhsusf_CGRCAT1A2_M2_usmc_d","rhsusf_M1117_D","rhsusf_M1220_M2_usarmy_d","rhsusf_M1237_M2_usarmy_d","rhsusf_M1238A1_M2_socom_d","rhsusf_m1045_d_s"];
vehNATOLightUnarmed = ["BWA3_Eagle_Tropen","rhsusf_m1025_d_s","rhsusf_m998_d_s_2dr","rhsusf_m998_d_s_2dr_fulltop","rhsusf_m998_d_s_4dr"];
vehNATOTrucks = ["rhsusf_M1078A1P2_d_open_fmtv_usarmy","rhsusf_M1078A1P2_B_d_fmtv_usarmy","rhsusf_M1078A1P2_B_d_open_fmtv_usarmy","rhsusf_M1083A1P2_d_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy"];
vehNATOCargoTrucks = [];
vehNATOAmmoTruck = "rhsusf_M977A4_AMMO_BKIT_usarmy_d";
vehNATORepairTruck = "rhsusf_M977A4_REPAIR_BKIT_usarmy_d";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["BWA3_Puma_Tropen","RHS_M2A3_BUSKI","RHS_M2A2_BUSKI","rhsusf_m113d_usarmy","rhsusf_m113d_usarmy_M240"];
vehNATOTank = "BWA3_Leopard2_Tropen";
vehNATOAA = "RHS_M6";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "rhsusf_mkvsoc";
vehNATORBoat = "rhsgref_hidf_rhib";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"rhsusf_m113d_usarmy","rhsusf_m113d_usarmy_M240"];
//Planes
vehNATOPlane = "RHS_A10_AT";
vehNATOPlaneAA = "rhsusf_f22";
vehNATOTransportPlanes = ["RHS_C130J"];
//Heli
vehNATOPatrolHeli = "rhs_uh1h_hidf_unarmed";
vehNATOTransportHelis = ["RHS_UH60M_d","RHS_CH_47F_light","rhsusf_CH53E_USMC_GAU21_D","rhs_uh1h_hidf","RHS_MELB_MH6M",vehNATOPatrolHeli];
vehNATOAttackHelis = ["RHS_MELB_AH6M_L","RHS_AH64D","RHS_UH1Y_d","RHS_AH1Z","BWA3_Tiger_RMK_Universal","BWA3_Tiger_RMK_FZ","BWA3_Tiger_RMK_PARS"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "rhsusf_m109d_usarmy";
vehNATOMRLSMags = "rhs_mag_155mm_m795_28";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "rhsusf_M978A4_BKIT_usarmy_wd","rhsusf_m113_usarmy_medical", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if ((gameMode != 4) and (!hasFFAA)) then
	{
	vehFIAArmedCar = "BWA3_Eagle_FLW100_Tropen";
	vehFIATruck = "rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy";
	vehFIACar = "BWA3_Eagle_Tropen";
	};

	//Police Vehicles
	vehPoliceCar = "rhsusf_mrzr4_d";

	////////////////////////////////////
	//        STATIC WEAPONS         ///
	////////////////////////////////////
	//Assembled Statics
	NATOMG = "RHS_M2StaticMG_USMC_D";
	staticATOccupants = "RHS_TOW_TriPod_USMC_D";
	staticAAOccupants = "RHS_Stinger_AA_pod_D";
	NATOMortar = "RHS_M252_USMC_D";

	//Static Weapon Bags
	MGStaticNATOB = "RHS_M2_Gun_Bag";
	ATStaticNATOB = "rhs_Tow_Gun_Bag";
	AAStaticNATOB = "B_AA_01_weapon_F";
	MortStaticNATOB = "rhs_M252_Gun_Bag";
	//Short Support
	supportStaticNATOB = "rhs_TOW_Tripod_Bag";
	//Tall Support
	supportStaticNATOB2 = "RHS_M2_Tripod_Bag";
	//Mortar Support
	supportStaticNATOB3 = "rhs_M252_Bipod_Bag";
