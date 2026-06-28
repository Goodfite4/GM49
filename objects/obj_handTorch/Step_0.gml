if (dragging)
{
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
}


if (is_on)
{
    if (!instance_exists(light_instance))
    {
        light_instance = instance_create_layer(x, y, "Instances", obj_big_lighting);
    }

    light_instance.x = x+2
    light_instance.y = y+2;
}
else
{
    if (instance_exists(light_instance))
    {
        instance_destroy(light_instance);
        light_instance = noone;
    }
}


var touching = place_meeting(x, y, obj_goat);


if (touching && !was_touching_goat)
{
    audio_play_sound(snd_goat, 0, false);
    audio_sound_gain(snd_goat, 0.8, 0);
}

was_touching_goat = touching;