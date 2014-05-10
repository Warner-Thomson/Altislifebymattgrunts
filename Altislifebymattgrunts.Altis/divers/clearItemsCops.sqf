/*
  Fichier: clearItemsCops.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
private ["_itemsToClear","_obj","_obj_deux","_rad","_delay"];
_obj = getMarkerPos "Cop_base"; // get spawn - might as well
_obj_deux = getMarkerPos "Cop_base_1"; // get spawn - might as well
_rad = 2000;  //  radius outwards from center point to clear items.
_delay = 100; // amount of time in-between clean-ups
 
while {true} do
{
	sleep _delay;
	// debugMessage = "Suppression des items au spawn ...";
	_itemsToClear = nearestObjects [_obj,["weaponholder"],_rad];
	_itemsToClear_deux = nearestObjects [_obj_deux,["weaponholder"],_rad];
	{
		deleteVehicle _x;
	} forEach _itemsToClear;
	{
		deleteVehicle _x;
	} forEach _itemsToClear_deux;
	// debugMessage = "Items Supprimés.";
};
