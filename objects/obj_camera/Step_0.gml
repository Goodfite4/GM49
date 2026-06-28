if (instance_exists(obj_moth))
{
    var target_x = obj_moth.x - cam_w * 0.5;
    var target_y = obj_moth.y - cam_h * 0.5;

	target_x = clamp(target_x, 0, room_width - cam_w);
	target_y = clamp(target_y, 0, room_height - cam_h);
	
    var cur_x = camera_get_view_x(cam);
    var cur_y = camera_get_view_y(cam);

    var follow_speed = 0.15;

    target_x = lerp(cur_x, target_x, follow_speed);
    target_y = lerp(cur_y, target_y, follow_speed);

    camera_set_view_pos(cam, target_x, target_y);
}

