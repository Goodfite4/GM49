
var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (!surface_exists(dark_surf))
{
    dark_surf = surface_create(cam_w, cam_h);
}

surface_set_target(dark_surf);
draw_clear_alpha(c_black, 1);

draw_set_color(c_black);
draw_rectangle(0, 0, cam_w, cam_h, false);
gpu_set_blendmode(bm_subtract);
draw_set_color(c_white);

draw_circle(
    x - cam_x,
    y - cam_y,
    light_radius + 50,
    false
);

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(dark_surf, 0, 0);