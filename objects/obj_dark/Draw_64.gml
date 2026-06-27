/// @description Insert description here
// You can write your code in this editor
// Recreate surface if needed
if (!surface_exists(dark_surf)) {
    dark_surf = surface_create(display_get_gui_width(), display_get_gui_height());
}

// Draw darkness surface
surface_set_target(dark_surf);
draw_clear_alpha(c_black, 0);

// Dark background overlay
draw_set_alpha(0.92);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Cut out light circle at mouse position
gpu_set_blendmode(bm_subtract);

draw_set_color(c_white);
draw_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), light_radius, false);

gpu_set_blendmode(bm_normal);

surface_reset_target();

// dark menu
draw_surface(dark_surf, 0, 0);

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

//cursor
draw_sprite(spr_cursor, 0, mx, my);