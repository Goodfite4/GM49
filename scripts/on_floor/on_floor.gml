// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function on_floor(){
//check if player on ground
var _side = bbox_bottom;

var _topside = tilemap_get_at_pixel(global.map, bbox_top - 10, _side + 1)

var _left_side = tilemap_get_at_pixel(global.map, bbox_left + 10, _side + 1);
var _right_side = tilemap_get_at_pixel(global.map, bbox_right - 10, _side + 1)


if _topside != FLOOR and (_left_side == FLOOR or _right_side == FLOOR) return true else return false;

}