/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;

// init controls

left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
crouch = 0;

// init random stuff man i dont know

spd = 4;
jump_spd = -8;
jump_dampner = 4;
hit_dmg = 5;
hit_stagger = 5;

is_on = false;
facing = 1;

dark_surf = -1;
light_radius = 160;

has_lightswitch = false;

crouch_spd = 2;
normal_spd = spd;

is_crouching = false;

spr_stand_right = spr_player_stand_right;
spr_stand_left = spr_player_stand_left;

spr_crouch_right = spr_player_crouch_right;
spr_crouch_left = spr_player_crouch_left;

if (facing == 1) {
    sprite_index = spr_stand_right;
} else {
    sprite_index = spr_stand_left;
}
mask_stand = spr_player_stand_right;
mask_crouch = spr_player_crouch_right;

mask_index = mask_stand;

