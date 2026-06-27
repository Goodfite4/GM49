// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
	
var _t2 = layer_tilemap_get_id("t_collision")

if (place_meeting(x, y + vsp, _t2)) {
	//basically a loop to repeat to check inbetween the bounding boxes and the total vspd so you dont
	// run in to a wall and get permanently stuck, so if you are 3 pixels away from a wall, 
	//you dont go 5 pixels into it and get stuck.	
	repeat(abs(vsp)) {
		if (!place_meeting(x+sign(vsp), y, _t2)) {
			y += sign(vsp);
			} else { break }
		}
		vsp = 0;
	}
	
if (place_meeting(x + hsp, y - 2, _t2)) {
	repeat(abs(hsp)) {
		if (!place_meeting(x+sign(hsp), y-2, _t2)) {
			x += sign(hsp);
			} else { break }
		}
		hsp = 0;
	}

x += hsp;
y += vsp;
}