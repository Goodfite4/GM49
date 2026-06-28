// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moth_boundaries(){
    var map = layer_tilemap_get_id("t_boundaries");

    var samples = 9;
    var hits = 0;

    var w = bbox_right - bbox_left;
    var h = bbox_bottom - bbox_top;

    for (var i = 0; i < samples; i++)
    {
        var gx = i mod 3;
        var gy = i div 3;

        var sx = bbox_left + (gx / 2) * w;
        var sy = bbox_top  + (gy / 2) * h;

        if (tilemap_get_at_pixel(map, sx, sy) != 0)
        {
            hits++;
        }
    }

    if (hits / samples >= 0.23)
    {
        room_restart();
    }
}
