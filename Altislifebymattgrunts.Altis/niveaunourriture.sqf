/*
  Fichier: niveaunourriture.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
if (isDedicated) then {} else 
{
	while {player getVariable "hungryLevel" > 0} do
	{
		sleep 130;
		if (player getvariable "hungryLevel" > 100) then {player setVariable["hungryLevel",100,true];};
		player setVariable["hungryLevel",(player getVariable "hungryLevel") - 5,true];
		if (player getVariable "hungryLevel" == 50) then
		{
			hint "Vous avez faim ! Manger ou vous mourrez !"; 
		};
		if (player getVariable "hungryLevel" == 20) then
		{
			hint "Vous avez de plus en plus faim ! Manger ou vous mourrez !"; 
		};
		if (player getVariable "hungryLevel" <= 0) then
		{
			player setDamage 1;
			hint "Vous êtes mort de faim !"; 
			sleep 4;
			player setVariable["hungryLevel",100,true];
		};
	};
};
 
