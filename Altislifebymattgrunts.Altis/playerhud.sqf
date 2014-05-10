/*
  Fichier: playerhud.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
waitUntil {!isNull player};
waitUntil {player == player};
waitUntil {alive player};

while {true} do
{
	//Calculer la santé
	_decimalPlacer = 2;
	_sante = damage player;
	player setVariable["sante",_sante,true];
	_sante = round (_sante * (10 ^ _decimalPlacer)) / (10 ^ _decimalPlacer);
	_sante = 100 - (_sante * 100);
	_vitals ctrlSetStructuredText parseText format
	["
	%1 <img size='1.1' image='icons\money.paa'/><br/>
	%2 <img size='1.1' image='icons\vie.paa'/><br/>
	%3 <img size='1.1' image='icons\water.paa'/><br/>
	%4 <img size='1.1' image='icons\food.paa'/><br/>
	%5 <img size='1.1' image='icons\dormir.paa'/><br/>
	",
	(player getVariable "mon_argent_banque"),
	_sante,
	(player getVariable "thirstLevel"),
	(player getVariable "hungryLevel"),
	(player getVariable "dormir")
	];
	_vitals ctrlCommit 0;
};
