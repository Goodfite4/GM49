var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

var sx = self.x - cam_x;
var sy = self.y - cam_y;

draw_rectangle(sx-16, sy-16, sx+16, sy+16, false);

if instance_exists(obj_switch) {
	if point_distance(self.x, self.y, obj_switch.x, obj_switch.y) < 50

	{draw_sprite(spr_e,0,self.x, self.y-35)}
}


if instance_exists(obj_portable_lightswitch) {
	if point_distance(self.x, self.y, obj_portable_lightswitch.x, obj_portable_lightswitch.y) < 50 
	{draw_sprite(spr_e,0,self.x, self.y-35)}
}
if is_on {

if (!surface_exists(dark_surf)) {
    dark_surf = surface_create(display_get_gui_width(), display_get_gui_height());
}

// Draw darkness surface
surface_set_target(dark_surf);
draw_clear_alpha(c_black, 0);

// Dark background overlay
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Cut out light circle at mouse position
gpu_set_blendmode(bm_subtract);

draw_set_color(c_white);

draw_circle(sx, sy, light_radius - 80, false);

gpu_set_blendmode(bm_normal);

surface_reset_target();

// dark menu
draw_surface(dark_surf, 0, 0);

}