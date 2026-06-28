if point_distance(x, y, obj_2d_player.x, obj_2d_player.y) < 100 && keyboard_check_pressed(ord("E")) == true {
	audio_play_sound(snd_door, 0, false);
    audio_sound_pitch(snd_door, random_range(0.95, 1.05));

	room_goto(roomtogo)
}