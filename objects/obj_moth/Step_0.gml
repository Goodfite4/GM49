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

        if (!tile_blocked(nx, ny))
        {
            x = nx;
            y = ny;
        }
        else
        {

            if (!tile_blocked(nx, y))
                x = nx;

            if (!tile_blocked(x, ny))
                y = ny;
        }

		audio_play_sound(snd_moth, 0, false);
		audio_sound_pitch(snd_moth, random_range(0.95, 1.05));
		audio_sound_gain(snd_moth, 0.2, 0);
        image_angle = dir;
    }
}

moth_boundaries()