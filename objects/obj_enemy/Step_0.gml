is_frozen = false;

if (instance_exists(obj_handTorch)) {
    var torch = instance_nearest(x, y, obj_handTorch);

    if (torch.is_on) {
        var actual_light_radius = torch.light_radius + 50;

        if (point_distance(x, y, torch.x, torch.y) < actual_light_radius) {
            is_frozen = true;
        }
    }
}

if (instance_exists(obj_2d_player)) {
    if (obj_2d_player.x > x) {
        facing = 1;
    } else {
        facing = -1;
    }

    if (facing == 1) {
        sprite_index = spr_enemy_right;
    } else {
        sprite_index = spr_enemy_left;
    }
}

if (is_frozen) {
    exit;
}

if (instance_exists(obj_2d_player)) {
    var dir = point_direction(x, y, obj_2d_player.x, obj_2d_player.y);

    x += lengthdir_x(enemy_spd, dir);
    y += lengthdir_y(enemy_spd, dir);
}