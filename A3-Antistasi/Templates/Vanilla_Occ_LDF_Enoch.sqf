////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "LDF";

//Police Faction
factionGEN = "";
//SF Faction
factionMaleOccupants = "";
//Miltia Faction
if (gameMode != 4) then {factionFIA = ""};

//Flag Images
NATOFlag = "Flag_Enoch_F";
NATOFlagTexture = "a3\data_f_enoch\flags\flag_enoch_co.paa";
flagNATOmrk = "flag_enoch";
if (isServer) then {"NATO_carrier" setMarkerText "LDF Carrier"};

//Loot Crate
NATOAmmobox = "I_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	"I_E_Soldier_SL_F",
	//Medic
	"I_E_Medic_F",
	//Autorifleman
	"I_E_Soldier_AR_F",
	//Marksman
	"I_E_soldier_M_F",
	//Anti-tank Scout
	"I_E_Soldier_LAT2_F",
	//AT2
	"I_E_Soldier_LAT2_F"
];

//PVP Player Vehicles
vehNATOPVP = ["I_MRAP_03_F","I_MRAP_03_hmg_F","I_E_Quadbike_01_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "I_E_Soldier_F";
NATOOfficer = "I_E_RadioOperator_F";
NATOOfficer2 = "I_E_Officer_F";
NATOBodyG = "I_E_Soldier_SL_F";
NATOCrew = "I_E_Crew_F";
NATOUnarmed = "I_E_Survivor_F";
NATOMarksman = "I_E_soldier_M_F";
staticCrewOccupants = "I_E_Soldier_F";
NATOPilot = "I_E_Helipilot_F";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "I_E_Soldier_AR_F";
	FIAMarksman = "I_E_Soldier_TL_F";
	};

//Police Units
policeOfficer = "I_E_Soldier_MP_F";
policeGrunt = "I_E_Soldier_MP_F";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["I_E_Soldier_GL_F","I_E_Soldier_F"];
groupsNATOSniper = ["I_Sniper_F","I_Spotter_F"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper];
//Fireteams
groupsNATOAA = ["I_E_Soldier_TL_F","I_E_Soldier_AA_F","I_E_Soldier_AA_F","I_E_Soldier_AAA_F"];
groupsNATOAT = ["I_E_Soldier_TL_F","I_E_Soldier_AT_F","I_E_Soldier_AT_F","I_E_Soldier_AAT_F"];
groupsNATOmid = [["I_E_Soldier_TL_F","I_E_Soldier_GL_F","I_E_Soldier_AR_F","I_E_Soldier_LAT_F"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["I_E_Soldier_SL_F",NATOGrunt,"I_E_Soldier_LAT_F","I_E_Soldier_GL_F","I_E_soldier_M_F","I_E_Soldier_AR_F","I_E_Soldier_A_F","I_E_Medic_F"];
NATOSpecOp = ["I_E_Soldier_SL_F","I_E_Soldier_Pathfinder_F","I_E_Soldier_LAT_F","I_E_Soldier_GL_F","I_E_Soldier_Pathfinder_F","I_E_Soldier_AR_F","I_E_Soldier_Pathfinder_F","I_E_Medic_F"];
groupsNATOSquad =
	[
	NATOSquad,
	["I_E_Soldier_SL_F",NATOGrunt,"I_E_Soldier_TL_F","I_E_Soldier_AR_F","I_E_Soldier_A_F","I_E_Soldier_LAT2_F","I_E_Soldier_LAT2_F","I_E_Medic_F"],
	["I_E_Soldier_SL_F",NATOGrunt,"I_E_Soldier_TL_F","I_E_Soldier_AR_F","I_E_Soldier_A_F","I_E_Soldier_LAT_F","I_E_Soldier_LAT_F","I_E_Medic_F"],
	["I_E_Soldier_SL_F",NATOGrunt,"I_E_Soldier_TL_F","I_E_Soldier_AR_F","I_E_Soldier_A_F","I_E_Soldier_AA_F","I_E_Soldier_AAA_F","I_E_Medic_F"],
	["I_E_Soldier_SL_F",NATOGrunt,"I_E_Soldier_TL_F","I_E_Soldier_AR_F","I_E_Soldier_A_F","I_E_Soldier_AT_F","I_E_Soldier_AAT_F","I_E_Medic_F"],
	["I_E_Soldier_SL_F",NATOGrunt,"I_E_Soldier_TL_F","I_E_Soldier_AR_F","I_E_Soldier_A_F","I_E_Engineer_F","I_E_Engineer_F","I_E_Medic_F"]
	];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["I_E_Soldier_GL_F",FIARifleman],
		[FIAMarksman,FIARifleman],
		[FIAMarksman,FIAMarksman]
		];
	//Fireteams
	groupsFIAMid =
		[
		["I_E_Soldier_TL_F","I_E_Soldier_GL_F","I_E_Soldier_AR_F","I_E_soldier_M_F"],
		["I_E_Soldier_TL_F","I_E_Soldier_GL_F","I_E_Soldier_AR_F","I_E_Soldier_AA_F"]
		];
	//Squads
	FIASquad = ["I_E_Soldier_TL_F","I_E_Soldier_GL_F","I_E_Soldier_AR_F","I_E_soldier_M_F","I_E_Soldier_LAT2_F","I_E_Soldier_AR_F","I_E_Soldier_Exp_F","I_E_Medic_F"];
	groupsFIASquad = [FIASquad];
	};

//Police Groups
//Teams
groupsNATOGen = ["I_E_Soldier_MP_F","I_E_Soldier_MP_F"];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "I_E_Quadbike_01_F";
vehNATOLightArmed = ["I_MRAP_03_hmg_F"];
vehNATOLightUnarmed = ["I_MRAP_03_F"];
vehNATOTrucks = ["I_E_Truck_02_F","I_E_Truck_02_transport_F"];
vehNATOCargoTrucks = [];
vehNATOAmmoTruck = "I_E_Truck_02_Ammo_F";
vehNATORepairTruck = "I_E_Truck_02_Box_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["I_E_APC_tracked_03_cannon_F"];
vehNATOTank = "I_MBT_03_cannon_F";
vehNATOAA = "I_LT_01_AA_F";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "I_Boat_Armed_01_minigun_F";
vehNATORBoat = "I_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
//Planes
vehNATOPlane = "I_Plane_Fighter_03_dynamicLoadout_F";
vehNATOPlaneAA = "I_Plane_Fighter_04_F";
vehNATOTransportPlanes = [];
//Heli
vehNATOPatrolHeli = "I_E_Heli_light_03_unarmed_F";
vehNATOTransportHelis = ["I_Heli_Transport_02_F","I_E_Heli_light_03_unarmed_F"];
vehNATOAttackHelis = ["I_E_Heli_light_03_dynamicLoadout_F"];
//UAV
vehNATOUAV = "I_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "I_E_UAV_01_F";
//Artillery
vehNATOMRLS = "I_E_Truck_02_MRL_F";
vehNATOMRLSMags = "12Rnd_230mm_rockets";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "I_E_Truck_02_fuel_F", "I_E_Truck_02_Medical_F", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then
	{
	vehFIAArmedCar = "I_G_Offroad_01_armed_F";
	vehFIATruck = "I_E_Van_02_transport_F";
	vehFIACar = "I_E_Offroad_01_F";
	};

//Police Vehicles
vehPoliceCar = vehFIACar;

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled
NATOMG = "I_G_HMG_02_high_F";
staticATOccupants = "I_E_Static_AT_F";
staticAAOccupants = "I_E_Static_AA_F";
NATOMortar = "I_E_Mortar_01_F";

//Static Weapon Bags
MGStaticNATOB = "I_G_HMG_02_high_weapon_F";
ATStaticNATOB = "I_AT_01_weapon_F";
AAStaticNATOB = "I_AA_01_weapon_F";
MortStaticNATOB = "I_Mortar_01_weapon_F";
//Short Support
supportStaticNATOB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticNATOB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticNATOB3 = "I_Mortar_01_support_F";
