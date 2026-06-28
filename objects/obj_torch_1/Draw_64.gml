if is_on {

if (!surface_exists(dark_surf)) {
    dark_surf = surface_create(display_get_gui_width(), display_get_gui_height());
}

// Draw darkness surface
surface_set_target(dark_surf);
draw_clear_alpha(c_black, 0);

// Dark background overlay
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Cut out light circle at mouse position
gpu_set_blendmode(bm_subtract);

draw_set_color(c_white);

draw_circle(x, y, light_radius, false);

gpu_set_blendmode(bm_normal);

surface_reset_target();

// dark menu
draw_surface(dark_surf, 0, 0);

}