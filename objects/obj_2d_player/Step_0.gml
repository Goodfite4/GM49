// middle click any function to go to it

controls();

hsp = (right - left) * spd;

movement(obj_2d_player);

if (on_floor() && jump) {
    vsp = jump_spd;
}

// horizontal collision
if (place_meeting(x + hsp, y, obj_wall_main))
{
    while (!place_meeting(x + sign(hsp), y, obj_wall_main))
    {
        x += sign(hsp);
    }

    hsp = 0;
}

x += hsp;

collision();

