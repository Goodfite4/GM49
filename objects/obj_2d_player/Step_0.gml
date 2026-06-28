controls();

movement("2d");

if on_floor() and jump { 
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

boundaries();


