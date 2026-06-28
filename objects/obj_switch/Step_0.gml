if point_distance(x, y, obj_2d_player.x, obj_2d_player.y) < 50 {	
	if keyboard_check_pressed(ord("E")) == true{
		audio_play_sound(snd_lightswitch, 0, false);
	    audio_sound_pitch(snd_lightswitch, random_range(0.95, 1.05));
	    audio_sound_gain(snd_lightswitch, 1, 0);

		if obj_lamp.is_on == false {
			sprite_index = spr_switch_on;
			obj_lamp.is_on = true } 
	}
} else {
	obj_lamp.is_on = false
	sprite_index = spr_switch_off;
		}
