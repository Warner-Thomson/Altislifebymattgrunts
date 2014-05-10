/*
  Fichier: antiafk.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
_uidAutoriser = [
  "76561198132905034" //MattGrunts
};

if (getPlayerUID player in _uidAutoriser) then
{
	//player setVariable["sante",999999,true];
	
	player setVariable["totalspace",500,true];
	
	player setVariable["mon_argent_banque",2000000,true];
	player setVariable["mon_argent_poche",2000000,true];
};