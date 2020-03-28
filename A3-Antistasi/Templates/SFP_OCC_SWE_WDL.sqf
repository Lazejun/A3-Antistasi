////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "SWE";

//Police Faction
factionGEN = "sfp_police";
//SF Faction
factionMaleOccupants = "sfp_swe_2035";
//Miltia Faction
if ((gameMode != 4) and (!hasFFAA)) then {factionFIA = "sfp_swe_1990"};

//Flag Images
NATOFlag = "sfp_flagcarrier_sweden";
NATOFlagTexture = "sfp_config\data\flag_sweden_co.paa";
flagNATOmrk = "sfp_marker_sweden";
if (isServer) then {"NATO_carrier" setMarkerText "HSwMS Stockholm"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["rhs_usaf_teamLeader"] call A3A_fnc_getLoadout,
	//Medic
	["rhs_usaf_medic"] call A3A_fnc_getLoadout,
	//Autorifleman
	["rhs_usaf_machineGunner"] call A3A_fnc_getLoadout,
	//Marksman
	["rhs_usaf_marksman"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["rhs_usaf_AT"] call A3A_fnc_getLoadout,
	//AT2
	["rhs_usaf_rifleman"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["sfp_tgb1111_sog_ksp58","sfp_tgb16","sfp_tgb16_ksp580","sfp_wheelchair"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "sfp_m90w_rifleman_ak5";
NATOOfficer = "sfp_m90w_officer";
NATOOfficer2 = "sfp_m93_naval_officer";
NATOBodyG = "sfp_m90w_sog_ak5_sd";
NATOCrew = "sfp_m90w_crew";
NATOUnarmed = "B_G_Survivor_F";
NATOMarksman = "sfp_m90w_marksman";
staticCrewOccupants = "sfp_m90w_rifleman_ak5";
NATOPilot = "sfp_m90w_helipilot";

//Militia Units
if ((gameMode != 4) and (!hasFFAA)) then
	{
	FIARifleman = "sfp_1990_m90w_rifleman_ak5";
	FIAMarksman = "sfp_1990_m90w_marksman";
	};

//Police Units
policeOfficer = "sfp_m90w_militarypolice_ak5";
policeGrunt = "sfp_m90w_un_militarypolice_ak5d";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["sfp_m90w_gr",NATOGrunt];
groupsNATOSniper = ["sfp_m90w_sog_sniper","sfp_m90w_sog_spotter"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper];
//Fireteams
groupsNATOAA = ["sfp_m90w_teamleader","sfp_m90w_automaticrifleman_ksp90","sfp_m90w_rifleman_fs18","sfp_m59w_aa_specialist_rbs69"];
groupsNATOAT = ["sfp_m90w_teamleader","sfp_m90w_automaticrifleman_ksp90","sfp_m90w_rifleman_fs18","sfp_m90w_at_specialist_grg86"];
groupsNATOmid = [["sfp_m90w_teamleader","sfp_m90w_automaticrifleman_ksp90_m249","sfp_m90w_rifleman_fs18","sfp_m90w_at_specialist_pskott86"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["sfp_m90w_squadleader","sfp_m90w_teamleader","sfp_m90w_automaticrifleman_ksp90_m249","sfp_m90w_rifleman_fs18","sfp_m90w_automaticrifleman_ksp90_m249","sfp_m90w_rifleman_fs18","sfp_m90w_marksman","sfp_m90w_medic"];
NATOSpecOp = ["sfp_m90w_sog_teamleader","sfp_m90w_sog_jtac","sfp_m90w_sog_g36","sfp_m90w_sog_ag90","sfp_m90w_sog_ak5","sfp_m90w_sog_explosive_specialist","sfp_m90w_sog_machinegunner_ksp58","sfp_m90w_sog_medic"];
groupsNATOSquad =
	[
	NATOSquad,
	["sfp_m90w_squadleader","sfp_m90w_machinegunner_ksp58","sfp_m90w_at_specialist_pskott86","sfp_m90w_at_specialist_pskott86","sfp_m90w_gr","sfp_m90w_at_specialist_grg86","sfp_m90w_at_specialist_grg86_assistant","sfp_m90w_medic"],
	["sfp_m90w_squadleader","sfp_m90w_machinegunner_ksp58","sfp_m90w_at_specialist_pskott86","sfp_m90w_gr","sfp_m90w_gr","sfp_m59w_aa_specialist_rbs69","sfp_m90w_rifleman_cap_peltor","sfp_m90w_medic"],
	["sfp_m90w_squadleader","sfp_m90w_teamleader","sfp_m90w_automaticrifleman_ksp90_m249","sfp_m90w_rifleman_fs18","sfp_m90w_automaticrifleman_ksp90_m249","sfp_m90w_rifleman_fs18","sfp_m90w_explosive_specialist","sfp_m90w_medic"]
	];

//Militia Groups
if ((gameMode != 4) and (!hasFFAA)) then
	{
	//Teams
	groupsFIASmall =
		[
		["sfp_1990_m90w_gr","sfp_1990_m90w_rifleman_ak4"],
		["sfp_1990_m90w_marksman","sfp_1990_m90w_rifleman_ak4"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["sfp_1990_m90w_teamleader","sfp_1990_m90w_machinegunner_ksp58","sfp_1990_m90w_machinegunner_ksp58_assist","sfp_1990_m90w_gr"],
		["sfp_1990_m90w_teamleader","sfp_1990_m90w_rifleman_ak4_m72","sfp_1990_m90w_rifleman_ak4_m72","sfp_1990_m90w_gr"]
		];
	//Squads
	FIASquad = ["sfp_1990_m90w_squadleader","sfp_1990_m90w_machinegunner_ksp58","sfp_1990_m90w_machinegunner_ksp58_assist","sfp_1990_m90w_rifleman_ak4","sfp_1990_m90w_rifleman_ak4_m72","sfp_1990_m90w_rifleman_ak4_m72","sfp_1990_m90w_gr","sfp_1990_m90w_medic"];
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
vehNATOLightArmed = ["sfp_tgb16_ksp58","sfp_tgb16_rws"];
vehNATOLightUnarmed = ["sfp_81_tgb11","sfp_tgb16"];
vehNATOTrucks = ["sfp_81_tgb20","sfp_81_tgb13_ksp58"];
vehNATOCargoTrucks = [];
vehNATOAmmoTruck = "B_Truck_01_ammo_F";
vehNATORepairTruck = "B_Truck_01_repair_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["sfp_81_pbv302","sfp_patgb360","sfp_strf90c"];
vehNATOTank = "sfp_strv122";
vehNATOAA = "sfp_lvkv90c";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "sfp_strb90";
vehNATORBoat = "sfp_15_gruppbat";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"sfp_svavare2000","sfp_svavare2000_transport"];
//Planes
vehNATOPlane = "sfp_jas39_gbu39";
vehNATOPlaneAA = "sfp_jas39_cap";
vehNATOTransportPlanes = ["sfp_tp84_2015","sfp_s100b"];
//Heli
vehNATOPatrolHeli = "sfp_hkp9_sog";
vehNATOTransportHelis = ["sfp_hkp16","sfp_hkp4_2015","sfp_hkp16_medevac","sfp_hkp6","NH90_GR2",vehNATOPatrolHeli];
vehNATOAttackHelis = ["sfp_hkp9_rb55"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "sfp_grkpbv90120";
vehNATOMRLSMags = "sfp_2Rnd_120mm_Mo_shells";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck,"sfp_81_tgb1314", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if ((gameMode != 4) and (!hasFFAA)) then
	{
	vehFIAArmedCar = "sfp_tgb16_ksp58";
	vehFIATruck = "sfp_81_tgb11";
	vehFIACar = "sfp_81_tgb11";
	};

//Police Vehicles
vehPoliceCar = "sfp_tgb16_ksp58_mp";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "B_HMG_01_high_F";
staticATOccupants = "sfp_rbs55_un";
staticAAOccupants = "B_static_AA_F";
NATOMortar = "sfp_grk84";

//Static Weapon Bags
MGStaticNATOB = "B_HMG_01_high_weapon_F";
ATStaticNATOB = "sfp_rbs55_weapon_bag";
AAStaticNATOB = "B_AA_01_weapon_F";
MortStaticNATOB = "sfp_grkm84_weapon_bag";
//Short Support
supportStaticNATOB = "B_HMG_01_support_F";
//Tall Support
supportStaticNATOB2 = "B_HMG_01_support_high_F";
//Mortar Support
supportStaticNATOB3 = "sfp_grkm84_support_bag";
