// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tile_blocked(_x, _y)
{
    var blocked = false;

    var map;

    // Collision layer
    map = layer_tilemap_get_id("t_collision");
    if (tilemap_get_at_pixel(map, _x, _y) != 0)
        blocked = true;

    return blocked;
}