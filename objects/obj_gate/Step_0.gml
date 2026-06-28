if (is_open) {
    open_timer--;

    tick_timer--;

    if (tick_timer <= 0) {
        audio_play_sound(snd_timer, 1, false);
        tick_timer = tick_rate;
    }

    if (open_timer <= 0) {
        is_open = false;
        visible = true;
    }
}