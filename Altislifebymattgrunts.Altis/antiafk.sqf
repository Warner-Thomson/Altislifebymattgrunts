/*
  Fichier: antiafk.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
_uidIgnorer = [
  "76561198132905034" //MattGrunts
};

if (getPlayerUID player in _uidIgnorer) exitWith {};

nebougepas = 0;

player globalChat format["Attention %1, la protection anti-AFK vient d'être initialisé ! Ne le reste pas ou tu perdra de l'argent !", name player];
while {true} do
{
  sleep 20;
  waitUntil{alive player};
  _pos1 = (getpos (vehicle player));
  sleep 1000;
  _pos2 = (getpos (vehicle player));
  _check = _pos1 distance _pos2;
  if (_check == 0) then
  {
    titleText ["Attention, le serveur a detecté que tu étais AFK, si tu reviens sur le même point dans les 90 secondes, tu perdras 20.000€ plus ton équipement !","PLAIN"];
    nebougepas = 1;
    if (nebougepas == 1) then
    {
      _pos1 = (getpos (vehicle player));
      sleep 90;
      _pos2 = (getpos (vehicle player));
      _check = _pos1 distance _pos2;
      if (_check == 0) then
      {
        titleCut ["", "BLACK",20];
				disableUserInput true;
				broadcast = 1;
				publicVariable "broadcast";
				servermessage = "Broadcast: " + _player + " AFK UID:" + _uid;
				publicVariableServer "servermessage";
				sleep 1;
				servermessage = "Broadcast: " + _player + " A été avertit de son AFK UID:" + _uid;
				publicVariableServer "servermessage";
				serverbroadcast = 1;
				publicVariableServer "serverbroadcast";
				titleText ["AFK !!!","PLAIN"];
				player setVariable["mon_argent_banque", (player getVariable "mon_argent_banque") - 20000,true];
				nebougepas = 0;
				sleep 10;
				disableUserInput false;
      } else {
        nebougepas = 0;
				titleText ["Merci d'avoir bougé pour eviter les abus !","PLAIN"];
      }
    };
  };
};
