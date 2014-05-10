/*
	Fichier: clearItemsCivils.sqf
	Auteur: MattGrunts
	Reproduction Interdite
*/
private ["_itemsToClear","_obj","_rad","_delay"];
_obj = getMarkerPos "respawn_civilian"; // get spawn - might as well
_rad = 2000;  //  radius outwards from center point to clear items.
_delay = 100; // amount of time in-between clean-ups
 
while {true} do
{
	sleep _delay;
	//debugMessage = "Suppression des items ...";
	_itemsToClear = nearestObjects [_obj,["weaponholder"],_rad];
	{
		deleteVehicle _x;
	} forEach _itemsToClear;
	//debugMessage = "Items Supprimés.";
};
