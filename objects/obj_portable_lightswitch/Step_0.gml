if point_distance(x, y, obj_2d_player.x, obj_2d_player.y) < 50 {	
	if keyboard_check_pressed(ord("E")) == true{
		obj_2d_player.has_lightswitch = true;
		obj_lamp.is_on = true;
		instance_destroy(self); 
	} }