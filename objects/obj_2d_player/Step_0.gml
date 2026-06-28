controls();

if (right) {
    facing = 1;
}

if (left) {
    facing = -1;
}

var wants_crouch = keyboard_check(ord("S"));

if (wants_crouch && on_floor()) {
    is_crouching = true;
} else {

    mask_index = spr_player_stand_right;

    if (!place_meeting(x, y, obj_wall_main)) {
        is_crouching = false;
    }

    if (is_crouching) {
        mask_index = spr_player_crouch_right;
    }
}

if (is_crouching) {
    if (facing == 1) {
        sprite_index = spr_player_crouch_right;
    } else {
        sprite_index = spr_player_crouch_left;
    }

    mask_index = spr_player_crouch_right;
    spd = crouch_spd;
} else {
    if (facing == 1) {
        sprite_index = spr_player_stand_right;
    } else {
        sprite_index = spr_player_stand_left;
    }

    mask_index = spr_player_stand_right;
    spd = normal_spd;
}

movement("2d");

var on_elevator = place_meeting(x, y + 2, obj_elevator);

if ((on_floor() || on_elevator) && jump) { 
    vsp = jump_spd;
}

if (has_lightswitch)
{
    if (keyboard_check_pressed(ord("R")))
    {
        obj_lamp.is_on = !obj_lamp.is_on;
        is_on = obj_lamp.is_on;
    }
}

collision();

var elev = instance_place(x, y + 2, obj_elevator);

if (elev != noone && vsp >= 0) {
    y += elev.vsp;

    if (vsp > 0) {
        vsp = 0;
    }
}

boundaries();