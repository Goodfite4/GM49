/// @description Insert description here
// You can write your code in this editor
controls();

hsp = (right - left) * spd;

// collision
if (place_meeting(x + hsp, y, obj_wall_main))
{
    while (!place_meeting(x + sign(hsp), y, obj_wall_main))
    {
        x += sign(hsp);
    }

    hsp = 0;
}

x += hsp;