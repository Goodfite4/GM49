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
	    audio_play_sound(snd_lightswitch, 0, false);
	    audio_sound_pitch(snd_lightswitch, random_range(0.95, 1.05));
	    audio_sound_gain(snd_lightswitch, 0.6, 0);

    }
}

collision();

boundaries();

var moving = (abs(hsp) > 0 || abs(vsp) > 0);

if (moving) and on_floor()
{
    move_sound_timer++;

    if (move_sound_timer >= move_sound_delay)
    {
        audio_play_sound(snd_move, 0, false);
		audio_sound_gain(snd_move, 0.6, 0);
        audio_sound_pitch(snd_move, random_range(0.95, 1.05));

        move_sound_timer = 0;
    }
}
else
{
    move_sound_timer = 0;
}

var touching = place_meeting(x, y, obj_goat);


if (touching && !was_touching_goat)
{
    audio_play_sound(snd_goat, 0, false);
    audio_sound_gain(snd_goat, 0.8, 0);
}

was_touching_goat = touching;

sprite_index = spr_player;

if (moving)
{
    image_speed = 1;
}
else
{
    image_speed = 0;
}