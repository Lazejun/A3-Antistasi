/*
    This file controls the selection of templates based on the mods loaded and map used.
    When porting new mods/maps be sure to add them to their respective sections!
*/

//Map checker
aridmaps = ["Altis","Kunduz","Malden","tem_anizay"];
tropicalmaps = ["Tanoa"];
temperatemaps = ["Enoch","chernarus_summer","vt7","Tembelan"];
arcticmaps = ["Chernarus_Winter"];
//Mod selector

if(teamplayer != independent) then {//This section is for Altis Blufor ONLY!
  switch(true) do {
    case (has3CB): {
      switch(true) do {
        case (worldName in arcticmaps): {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_TPGM_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_TKA_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_SOV_Temp.sqf";
        };
        case (worldName in temperatemaps): {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_TPGM_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_TKA_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_SOV_Temp.sqf";
        };
        case (worldName in tropicalmaps): {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_CNM_Trop.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_TKA_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_SOV_Temp.sqf";
        };
        default {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_TPGM_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_TKA_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_TKM_Arid.sqf";
        };
      };
      call compile preProcessFileLineNumbers "Templates\3CB_Civ.sqf";
    };
    case (hasRHS): {
      switch(true) do {
        case (worldName in arcticmaps): {
          call compile preProcessFileLineNumbers "Templates\RHS_Reb_HIDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Occ_CDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Temp.sqf";
        };
        case (worldName in temperatemaps): {
          call compile preProcessFileLineNumbers "Templates\RHS_Reb_HIDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Occ_CDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Temp.sqf";
        };
        case (worldName in tropicalmaps): {
          call compile preProcessFileLineNumbers "Templates\RHS_Reb_HIDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Occ_CDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Temp.sqf";
        };
        default {
          call compile preProcessFileLineNumbers "Templates\RHS_Reb_HIDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Occ_CDF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Arid.sqf";
        };
      };
      call compile preProcessFileLineNumbers "Templates\RHS_Civ.sqf";
    };
    default {
      switch(true) do {//This one (vanilla) works differently so that we don't get DLC kit on modded maps.
        case (worldName == "Enoch"): {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_B_Enoch.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_LDF_Enoch.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Enoch.sqf";
        };
        case (worldName == "Tanoa"): {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_B_Tanoa.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_AAF_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Tanoa.sqf";
        };
        case (worldName in temperatemaps): {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_B_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_AAF_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Altis.sqf";
        };
        default {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_B_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_AAF_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Altis.sqf";
        };
      };
      call compile preProcessFileLineNumbers "Templates\Vanilla_Civ.sqf";
    };
  };
};
