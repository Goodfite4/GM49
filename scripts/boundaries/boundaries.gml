// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boundaries(){
	var _t3 = layer_tilemap_get_id("t_boundaries")
	if place_meeting(x, y, _t3) {
	room_restart()
	}
}