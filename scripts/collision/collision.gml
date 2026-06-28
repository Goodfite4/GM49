function collision()
{
    var map = layer_tilemap_get_id("t_collision");

    // VERTICAL COLLISION

    if (vsp != 0)
    {
        if (!place_meeting(x, y + vsp, map))
        {
            y += vsp;
        }
        else
        {
            // move pixel-by-pixel until just before collision
            var step = sign(vsp);

            while (!place_meeting(x, y + step, map))
            {
                y += step;
            }

            vsp = 0;
        }
    }

    // HORIZONTAL COLLISION

    if (hsp != 0)
    {
        if (!place_meeting(x + hsp, y, map))
        {
            x += hsp;
        }
        else
        {
            var step = sign(hsp);

            while (!place_meeting(x + step, y, map))
            {
                x += step;
            }

            hsp = 0;
        }
    }
}