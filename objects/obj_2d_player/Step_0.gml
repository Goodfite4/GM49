/// @description Insert description here
// You can write your code in this editor
controls();

hsp = (right - left) * spd;

if (jump && place_meeting(x, y + 1, obj_wall_main))
{
    vsp = jump_spd;
}

// Gravity
vsp += gravity_force;

// Horizontal collision
if (place_meeting(x + hsp, y, obj_wall_main))
{
    while (!place_meeting(x + sign(hsp), y, obj_wall_main))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

// Vertical collision
if (place_meeting(x, y + vsp, obj_wall_main))
{
    while (!place_meeting(x, y + sign(vsp), obj_wall_main))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;