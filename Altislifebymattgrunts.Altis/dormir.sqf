/*
  Fichier: dormir.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
_cplayer = player;

if (isDedicated) then {} else
{
  while {player getVariable "dormir" > 0} do
  {
    sleep 110;
    player setVariable["dormir",(player getVariable "dormir") - 1,true];
    if (player getVariable "dormir" == 50) then
		{
			hint "Vous êtes fatigué ! Pensez à aller dormir."; 
		};
		if (player getVariable "dormir" == 20) then
		{
			hint "Vous êtes de plus en plus fatigué ! Vous allez bientôt tomber de fatigue !"; 
		};
		if (player getVariable "dormir" == 0) then
		{
			hint "Vous êtes tombé de fatigue ! Allez dormir !"; 
			disableUserInput true;
			_cplayer switchMove "AinjPpneMstpSnonWnonDnon";
			sleep 9;
			disableUserInput false;
			player setVariable["dormir",1,true];
			sleep 2;
			player setVariable["dormir",2,true];
		};
  };
};
