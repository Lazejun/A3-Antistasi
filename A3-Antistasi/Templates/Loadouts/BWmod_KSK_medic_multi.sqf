[//Loadout
	[//Primary Weapon
		"BWA3_G38C_tan",									//Weapon
		"",													//Muzzle
		"BWA3_acc_VarioRay_irlaser_black",								//Rail
		selectRandom										//Sight
		["rhsusf_acc_compm4", "BWA3_optic_EOTech_sand"],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",30],			//Primary Magazine
		[],													//Secondary Magazine
		""
	],

	[//Launcher
		"",													//Weapon
		"",													//Muzzle
		"",													//Rail
		"",													//Sight
		[],													//Primary Magazine
		[],													//Secondary Magazine
		""													//Bipod
	],

	[//Secondary Weapon
		"BWA3_P8",								//Weapon
		"",													//Muzzle
		"BWA3_acc_LLM01_irlaser",													//Rail
		"",													//Sight
		["BWA3_15Rnd_9x19_P8",15],						//Primary Magazine
		[],													//Secondary Magazine
		""													//Bipod
	],

	[//Uniform
		"BWA3_Uniform_Multi",								//Uniform
		[] + _basicMedicalSupplies + _basicMiscItems
	],

	[//Vest
		selectRandom										//vest
		["BWA3_Vest_JPC_Radioman_Multi","BWA3_Vest_JPC_Rifleman_Multi","BWA3_Vest_JPC_Leader_Multi"],
		[//Inventory
			["rhsusf_ANPVS_15",1],
			["BWA3_DM25",2,1],
			["BWA3_DM51A1",1,1],
			["BWA3_15Rnd_9x19_P8",2,15],
			["BWA3_30Rnd_556x45_G36_Tracer_Dim",4,30]
			]
			+ _aceFlashlight
			+ _aceM84
	],

	[//Backpack
		"BWA3_AssaultPack_Multi_Medic",						//Backpack
		[] + _medicSupplies
	],

	"BWA3_CrewmanKSK_Fleck",				//Headgear
	SelectRandom 										//Facewear
	["rhsusf_shemagh2_gogg_od","RHSUSF_Shemagh2_Gogg_Grn","rhs_googles_black","rhs_ess_black"],

	[//Binocular
		"Binocular",										//Binocular
		"",
		"",
		"",
		[],
		[],
		""
	],

	[//Item
		"ItemMap",											//Map
		"",													//Terminal
		["TF_ANPRC152"] call _fnc_tfarRadio,				//Radio
		"ItemCompass",										//Compass
		_tfarMicroDAGRNoArray,										//Watch
		""													//Goggles
	]
];
