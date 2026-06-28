if point_distance(x, y, obj_2d_player.x, obj_2d_player.y) < 50 {	
	if keyboard_check_pressed(ord("E")) == true{
		if obj_lamp.is_on == false {
			obj_lamp.is_on = true } 
	}
} else {
	obj_lamp.is_on = false
		}

