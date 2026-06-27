// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement(playerType){
// the parameter specifies whether to use gravity or to have 4d movement

hsp = (right - left)* spd;

if playerType = obj_2d_player {if !on_floor() { vsp += global.gravity_var } else { vsp = 0 }}
else { vsp = (down - up)* spd; }

}