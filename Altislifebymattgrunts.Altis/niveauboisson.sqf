/*
  Fichier: niveauboisson.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (isDedicated) then {} else
{
  while {player getVariable "thistLevel" > 0} do
  {
    sleep 120;
    if (player getVariable "thirstLevel" > 100) then {player setVariable["thirstLevel",100,true];};
    
    player setVariable["thirstLevel",(player getVariable "thirstLevel") - 5,true];
    if (player getVariable "thirstLevel" == 50) then
    {
      hint "Vous êtes en train de vous déshydrater ! Buvez ou vous mourrez !"; 
    };
    if (player getVariable "thirstLevel" == 20) then
    {
      hint "Vous êtes de plus en plus déshydraté ! Buvez ou vous mourrez !";
    };
    if (player getVariable "thirstLevel" == 0) then
    {
      player setDamage 1;
      sleep 1;
      player setDamage 1;
      hint "Vous êtes mort de soif!";
    };
  };
};
