//By MattGrunts http://altisliferpg.fr - REPRODUCTION INTERDITE

X_inIT = false;
X_Server = false;
X_Client = false;
X_JIP = false;
X_SPE = false;
X_MP = (if (playersNumber east + playersNumber west + playersNumber resistance + playersNumber civilian > 0) then {true} else {false});

if (isServer) exitWith {};
waitUntil {!isNull player};
waitUntil {player == player};
waitUntil {alive player};

execVM "whitelist\whitelist_gendarmes.sqf";

_null = [] execVM = "divers\clearItemsCivils.sqf";
_null = [] execVM = "divers\clearItemsCops.sqf";

[8, true, true, 7] execFSM "core_time.fsm";
execVM "initJoueur.sqf";
execVM "briefing.sqf";
execVM "playerhud.sqf";
execVM "niveauboisson.sqf";
execVM "niveaunourriture.sqf";
execVM "dormir.sqf";
execVM "remiseazerosihack.sqf";
execVM "antiafk.sqf";
execVM "test.sqf";
execVM "divers\playerTags.sqf";
execVM "divers\setupAction.sqf";
