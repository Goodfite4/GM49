/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_2d_player)) {
    if (point_distance(x, y, obj_2d_player.x, obj_2d_player.y) < 40) {
        if (keyboard_check_pressed(ord("E"))) {
            pressed = true;

			with (obj_gate) {
			    is_open = true;
			    open_timer = open_time;
			    tick_timer = 0;
			    visible = false;
			}
        }
    }
}