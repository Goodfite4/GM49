function collision()
{
    var map = layer_tilemap_get_id("t_collision");

    function solid_vertical(_x, _y, _map, _vsp)
    {
        // tile collision
        if (place_meeting(_x, _y, _map)) {
            return true;
        }

        // elevator/platform collision only when falling
        if (_vsp >= 0 && place_meeting(_x, _y, obj_elevator)) {
            return true;
        }

        // gate collision only when closed
        var gate = instance_place(_x, _y, obj_gate);
        if (gate != noone && !gate.is_open) {
            return true;
        }

        return false;
    }

    function solid_horizontal(_x, _y, _map)
    {
        // tile collision
        if (place_meeting(_x, _y, _map)) {
            return true;
        }

        // gate collision only when closed
        var gate = instance_place(_x, _y, obj_gate);
        if (gate != noone && !gate.is_open) {
            return true;
        }

        return false;
    }

    // VERTICAL COLLISION
    if (vsp != 0)
    {
        if (!solid_vertical(x, y + vsp, map, vsp))
        {
            y += vsp;
        }
        else
        {
            var step = sign(vsp);

            while (!solid_vertical(x, y + step, map, vsp))
            {
                y += step;
            }

            vsp = 0;
        }
    }

    // HORIZONTAL COLLISION
    if (hsp != 0)
    {
        if (!solid_horizontal(x + hsp, y, map))
        {
            x += hsp;
        }
        else
        {
            var step = sign(hsp);

            while (!solid_horizontal(x + step, y, map))
            {
                x += step;
            }

            hsp = 0;
        }
    }
}