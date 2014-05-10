/*
  Fichier: habbitaleatoire.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/

waitUntil {!isNil "bis_fnc_init"};

_habbitaleatoire = [
  "U_C_Poor_2",
  "U_C_Scavenger_2",
  "U_C_Poloshirt_blue",
  "U_C_Poloshirt_burgundy",
  "U_C_Poloshirt_stripped",
  "U_C_Poloshirt_tricolour",
  "U_C_Poloshirt_salmon",
  "U_C_Poloshirt_redwhite",
  "U_C_Commoner1_1",
  "U_C_Commoner1_2",
  "U_C_Commoner1_3",
  "U_C_Commoner_shorts",
  "U_C_ShirtSurfer_shorts",
  "U_C_TeeSurfer_shorts_1",
  "U_C_TeeSurfer_shorts_2",
  "U_C_Poor_1"
];

removeUniform player;
_habbitappliquable = _habbitaleatoire call BIS_fnc_selectRandom;
player addUniform _habbitappliquable;
