[//Loadout
	[//Primary Weapon
		"BWA3_G29",								//Weapon
		"",													//Muzzle
		"BWA3_acc_VarioRay_irlaser_black",								//Rail
		"BWA3_optic_M5Xi_MSR",								//Sight
		["BWA3_10Rnd_86x70_G29",10],				//Primary Magazine
		[],													//Secondary Magazine
		"BWA3_bipod_Harris_tan"								//Bipod
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
			["BWA3_optic_NSV80",1],
			["BWA3_10Rnd_86x70_G29",5,10],
			["BWA3_15Rnd_9x19_P8",2,15],
			["BWA3_DM25",2,1],
			["BWA3_DM51A1",1,1],
			["rhs_mag_mk84",1,1]
		]
		+ _aceFlashlight
		+ _aceKestrel
		+ _aceATragMX
		+ _aceRangecard
	],

	[//Backpack
		"BWA3_AssaultPack_Multi",						//Backpack
		[//Inventory
			[]
		]
	],

	"BWA3_Booniehat_Multi",				//Headgear
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
		["TF_RF7800STR"] call _fnc_tfarRadio,				//Radio
		"ItemCompass",										//Compass
		_tfarMicroDAGRNoArray,										//Watch
		""													//Goggles
	]
];
