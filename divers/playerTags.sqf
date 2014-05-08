/*
  Fichier: playerTags.sqf
  Auteur: MattGrunts
  Reproduction Interdite
*/
onEachFrame
{
    private["_vis","_pos","_near"];
    _near = getPos player nearEntities ["Man",15];
    {
        if(player distance _x < 15 && isPlayer _x && _x != player) then
        {
            _vis = lineIntersects [eyePos player, eyePos _x,player, _x];
            if(!_vis) then
            {
                _pos = visiblePosition _x;
                _pos set[2,(getPosATL _x select 2) + 2.2];
                drawIcon3D ["",[1,1,1,1],_pos,0,0,0,name _x,0,0.03];
            };
        };
    } foreach _near;
};
