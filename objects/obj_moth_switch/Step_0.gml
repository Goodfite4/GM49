/// @description Insert description here
// You can write your code in this editor

if (activated)
{
    sprite_index = spr_switch_on;
}
else
{
    sprite_index = spr_switch_off;
}

if (activated != last_state)
{
    audio_play_sound(snd_lightswitch, 0, false);
    audio_sound_pitch(snd_lightswitch, random_range(0.95, 1.05));
    audio_sound_gain(snd_lightswitch, 1, 0);

    last_state = activated;
}