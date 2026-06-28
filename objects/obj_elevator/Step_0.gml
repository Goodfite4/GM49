var old_y = y;

// move elevator
y += move_spd * move_dir;

// top
if (y <= end_y) {
    y = end_y;
    move_dir = 1;
}

// bottom
if (y >= start_y) {
    y = start_y;
    move_dir = -1;
}

// store movement amount
vsp = y - old_y;