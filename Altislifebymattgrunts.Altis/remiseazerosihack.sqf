/*
  Fichier: remiseazerosihack.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
waitUntil {!isNull player};
waitUntil {player == player};

_uidIgnorer = [
  "76561198132905034", //MattGrunts
  "76561198038026131", //Steve
  "76561198014384317" //Mike
};

if (getPlayerUID player in _uidIgnorer) exitWith {};

sleep 10;
if ((player getVariable "mon_argent_banque") > 2000000) then
{
  player setVariable["mon_argent_banque",2000000,true];
  if (avertissementtropdargent == 0) then
  {
    avertissementtropdargent = 1;
    hint "! Attention ! \n\n Nous avons detecté que vous avez beaucoup d'argent sur votre compte (+ de 2 000 000 Euros) ! \n\n Vous ne pourrez plus depasser cette somme !";
		sleep 2;
		hint "! Attention ! \n\n Nous avons detecté que vous avez beaucoup d'argent sur votre compte (+ de 2 000 000 Euros) ! \n\n Vous ne pourrez plus depasser cette somme !";
		sleep 2;
		hint "! Attention ! \n\n Nous avons detecté que vous avez beaucoup d'argent sur votre compte (+ de 2 000 000 Euros) ! \n\n Vous ne pourrez plus depasser cette somme !";
  };
};

execVM "remiseazerosihack.sqf";
