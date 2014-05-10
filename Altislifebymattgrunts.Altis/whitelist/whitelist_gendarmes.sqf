/*
  Fichier: whitelist_gendarmes.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (isServer) exitWith {};

sleep 1;
waitUntil {!isNull player};
waitUntil {player == player};

_ListeGendarmes = [
  	Cop_1,
	Cop_2,
	Cop_3,
	Cop_4,
	Cop_5,
	Cop_6,
	Cop_7,
	Cop_8,
	Cop_9,
	Cop_10,
	Cop_11,
	Cop_12,
	Cop_13,
	Cop_14,
	Cop_15,
	Cop_16,
	Cop_17,
	Cop_18,
	Cop_19,
	Cop_20,
	Cop_21,
	Cop_22,
	Cop_23,
	Cop_24
};

if (player in _ListeGendarmes) then
{
  _uidListeGendarmes = [
	"76561198132905034", //MattGrunts
    "76561198038026131", //Steve
    "76561198014384317" //Mike
  ];
  if (getPlayerUID player in _uidListeGendarmes) then
  {
    _simple = [Cop_1,Cop_2,Cop_3,Cop_4,Cop_5,Cop_6,Cop_7,Cop_8,Cop_9,Cop_10,Cop_11,Cop_12,Cop_13,Cop_14,Cop_15,Cop_16];
    if (player in _simple) then
    {
      removeHeadgear player;
      player removeWeapon "NVGoggles";
      player addHeadGear "h_beret_blk";
      sleep 0.045;
      player addUniform "U_Rangemaster";
      sleep 1;
      player setObjectTextureGlobal [0, "textures\gendarmerie_uniform_base.jpg"];
    };
    
    _civil = [Cop_17,Cop_18,Cop_19,Cop_20,Cop_21,Cop_22,Cop_23,Cop_24];
    if (player in _civil) then
    {
      removeHeadgear player;
      player removeWeapon "NVGoggles";
      removeVest player;
      execVM "habbitaleatoire.sqf";
    } else {
  cutText["\n\n\n\n\n\n\n Ce slot est reservé aux Gendarmes ! Faites votre candidature sur www.altisliferpg.fr !","BLACK FADED",10]; 
	sleep 10;
	cutText["","BLACK IN",6];
	endMission "Ce slot est reservé aux Gendarmes ! Faites votre candidature sur www.altisliferpg.fr !";
};
  };
  };
