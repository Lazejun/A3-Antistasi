////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "BW";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "";
//Miltia Faction
if ((gameMode != 4) and (!hasFFAA)) then {factionFIA = "BWA3_Faction_Multi"};

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
	["BWmod_KSK_Teamleader_Multi"] call A3A_fnc_getLoadout,
	//Medic
	["BWmod_KSK_Medic_Multi"] call A3A_fnc_getLoadout,
	//Autorifleman
	["BWmod_KSK_MachineGunner_Multi"] call A3A_fnc_getLoadout,
	//Marksman
	["BWmod_KSK_Marksman_Multi"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["BWmod_KSK_AT_Multi"] call A3A_fnc_getLoadout,
	//AT2
	["BWmod_KSK_AT2_Multi"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["BWA3_Eagle_Fleck","BWA3_Eagle_FLW100_Fleck","B_Quadbike_01_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "BWA3_Rifleman_Fleck";
NATOOfficer = "BWA3_Officer_Fleck";
NATOOfficer2 = "BWA3_Tank_Commander_Fleck";
NATOBodyG = "BWA3_TL_Fleck";
NATOCrew = "BWA3_Crew_Fleck";
NATOUnarmed = "BWA3_Rifleman_unarmed_Fleck";
NATOMarksman = "BWA3_Marksman_Fleck";
staticCrewOccupants = "BWA3_Rifleman_Fleck";
NATOPilot = "BWA3_Helipilot";

//Militia Units
if ((gameMode != 4) and (!hasFFAA)) then
	{
	FIARifleman = "BWA3_Rifleman_Multi";
	FIAMarksman = "BWA3_Marksman_Multi";
	};

//Police Units
policeOfficer = "BWA3_Officer_Fleck";
policeGrunt = "BWA3_Officer_Fleck";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["BWA3_Grenadier_Fleck",NATOGrunt];
groupsNATOSniper = ["BWA3_Sniper_G29_Fleck","BWA3_Spotter_Fleck"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper];
//Fireteams
groupsNATOAA = ["BWA3_TL_Fleck","BWA3_MachineGunner_MG4_Fleck","BWA3_Rifleman_Fleck","BWA3_RiflemanAA_Fliegerfaust_Fleck"];
groupsNATOAT = ["BWA3_TL_Fleck","BWA3_MachineGunner_MG4_Fleck","BWA3_Rifleman_Fleck","BWA3_RiflemanAT_RGW90_Fleck"];
groupsNATOmid = [["BWA3_TL_Fleck","BWA3_MachineGunner_MG5_Fleck","BWA3_Rifleman_Fleck","BWA3_RiflemanAT_CG_Fleck"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["BWA3_SL_Fleck","BWA3_TL_Fleck","BWA3_MachineGunner_MG5_Fleck","BWA3_Rifleman_G27_Fleck","BWA3_MachineGunner_MG5_Fleck","BWA3_Rifleman_G27_Fleck","BWA3_Marksman_Fleck","BWA3_Medic_Fleck"];
NATOSpecOp = ["BWA3_recon_TL_Fleck","BWA3_recon_Radioman_Fleck","BWA3_recon_Fleck","BWA3_recon_Marksman_Fleck","BWA3_recon_LAT_Fleck","BWA3_recon_Pioneer_Fleck","BWA3_recon_Fleck","BWA3_recon_Medic_Fleck"];
groupsNATOSquad =
	[
	NATOSquad,
	["BWA3_SL_Fleck","BWA3_MachineGunner_MG4_Fleck","BWA3_RiflemanAT_PzF3_Fleck","BWA3_RiflemanAT_PzF3_Fleck","BWA3_Grenadier_G27_Fleck","BWA3_RiflemanAT_RGW90_Fleck","BWA3_RiflemanAT_RGW90_Fleck","BWA3_Medic_Fleck"],
	["BWA3_SL_Fleck","BWA3_MachineGunner_MG4_Fleck","BWA3_RiflemanAT_PzF3_Fleck","BWA3_Grenadier_G27_Fleck","BWA3_Grenadier_G27_Fleck","BWA3_RiflemanAA_Fliegerfaust_Fleck","BWA3_Rifleman_Fleck","BWA3_Medic_Fleck"],
	["BWA3_SL_Fleck","BWA3_TL_Fleck","BWA3_MachineGunner_MG5_Fleck","BWA3_Rifleman_G27_Fleck","BWA3_MachineGunner_MG5_Fleck","BWA3_Rifleman_G27_Fleck","BWA3_Engineer_Fleck","BWA3_Medic_Fleck"]
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
vehNATOLightArmed = ["BWA3_Eagle_FLW100_Fleck","rhsusf_m1025_w_s_m2","rhsusf_CGRCAT1A2_M2_usmc_wd","rhsusf_M1220_M2_usarmy_wd","rhsusf_M1237_M2_usarmy_wd","rhsusf_M1238A1_M2_socom_wd","rhsusf_m1240a1_m240_usmc_wd"];
vehNATOLightUnarmed = ["BWA3_Eagle_Fleck","rhsusf_m1025_w_s","rhsusf_m998_w_s_2dr","rhsusf_m998_w_s_2dr_fulltop","rhsusf_m998_w_s_4dr","rhsusf_CGRCAT1A2_usmc_wd","rhsusf_m1240a1_usmc_wd"];
vehNATOTrucks = ["rhsusf_M1078A1P2_WD_open_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_open_fmtv_usarmy","rhsusf_M1083A1P2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"];
vehNATOCargoTrucks = [];
vehNATOAmmoTruck = "rhsusf_M977A4_AMMO_BKIT_usarmy_wd";
vehNATORepairTruck = "rhsusf_M977A4_REPAIR_BKIT_usarmy_wd";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["BWA3_Puma_Fleck","rhsusf_stryker_m1126_m2_wd","rhsusf_stryker_m1127_m2_wd","rhsusf_stryker_m1132_m2_wd","RHS_M2A3_BUSKI_wd","RHS_M2A2_BUSKI_WD","rhsusf_m113_usarmy","rhsusf_m113_usarmy_M240"];
vehNATOTank = "BWA3_Leopard2_Fleck";
vehNATOAA = "RHS_M6_wd";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "rhsusf_mkvsoc";
vehNATORBoat = "rhsgref_hidf_rhib";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"rhsusf_m113_usarmy_M240","rhsusf_m113_usarmy"];
//Planes
vehNATOPlane = "RHS_A10_AT";
vehNATOPlaneAA = "rhsusf_f22";
vehNATOTransportPlanes = ["RHS_C130J"];
//Heli
vehNATOPatrolHeli = "rhs_uh1h_hidf_unarmed";
vehNATOTransportHelis = ["RHS_UH60M","RHS_CH_47F","rhsusf_CH53E_USMC_GAU21","rhs_uh1h_hidf","RHS_MELB_MH6M",vehNATOPatrolHeli];
vehNATOAttackHelis = ["RHS_MELB_AH6M_L","RHS_AH64D_wd","RHS_UH1Y","RHS_AH1Z_wd","BWA3_Tiger_RMK_Universal","BWA3_Tiger_RMK_FZ","BWA3_Tiger_RMK_PARS"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "rhsusf_m109_usarmy";
vehNATOMRLSMags = "rhs_mag_155mm_m795_28";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "rhsusf_M978A4_BKIT_usarmy_wd","rhsusf_m113_usarmy_medical", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if ((gameMode != 4) and (!hasFFAA)) then
	{
	vehFIAArmedCar = "rhsusf_m1025_w_s_m2";
	vehFIATruck = "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy";
	vehFIACar = "BWA3_Eagle_Fleck";
	};

	//Police Vehicles
	vehPoliceCar = "rhsusf_mrzr4_d";

	////////////////////////////////////
	//        STATIC WEAPONS         ///
	////////////////////////////////////
	//Assembled Statics
	NATOMG = "RHS_M2StaticMG_USMC_WD";
	staticATOccupants = "RHS_TOW_TriPod_USMC_WD";
	staticAAOccupants = "RHS_Stinger_AA_pod_WD";
	NATOMortar = "RHS_M252_USMC_WD";

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
