// Find the nearest torch
target = instance_nearest(x, y, obj_handTorch);

if (instance_exists(target))
{
    var dist = point_distance(x, y, target.x, target.y);

    if (dist <= detect_radius) && (dist >= 20)
    {
        var dir = point_direction(x, y, target.x, target.y);

        var hsp = lengthdir_x(move_speed, dir);
        var vsp = lengthdir_y(move_speed, dir);

        var nx = x + hsp;
        var ny = y + vsp;

        // Move if nothing is blocking the way
        if (!tile_blocked(nx, ny))
        {
            x = nx;
            y = ny;
        }
        else
        {
            // Slide along walls
            if (!tile_blocked(nx, y))
                x = nx;

            if (!tile_blocked(x, ny))
                y = ny;
        }

        // Face the direction of travel
        image_angle = dir;
    }
}

moth_boundaries()