/*
  Fichier: setupAction.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (side player == west) then
{

};
if (side player == civilian) then
{
  //Argent en banque
  player addAction ["Mon Argent", "banque\bankmenu.sqf", [], 999999, false, false, "", ""];
};
