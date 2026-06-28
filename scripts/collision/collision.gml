// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
	var _t2 = layer_tilemap_get_id("t_collision")

	if (place_meeting(x, y + vsp, _t2)) {
		repeat(abs(vsp)) {
			if (!place_meeting(x+sign(vsp), y, _t2)) {
				y += sign(vsp);
				} else { break }
			}
			vsp = 0;
		}
	
	if (place_meeting(x + hsp, y, _t2)) {
		repeat(abs(hsp)) {
			if (!place_meeting(x+sign(hsp), y-2, _t2)) {
				x += sign(hsp);
				} else { break }
			}
			hsp = 0;
		}
		// check for collision with a certain object
		
		if obj_lamp.is_on == false {

    if (place_meeting(x, y + vsp, obj_deathwall)) {
        repeat(abs(vsp)) {
            if (!place_meeting(x, y + sign(vsp), obj_deathwall)) {
                y += sign(vsp);
            } else {
                break;
            }
        }
        vsp = 0;
    }

    if (place_meeting(x + hsp, y - 2, obj_deathwall)) {
        repeat(abs(hsp)) {
            if (!place_meeting(x + sign(hsp), y - 2, obj_deathwall)) {
                x += sign(hsp);
            } else {
                break;
            }
        }
        hsp = 0;
    }

}

	x += hsp;
	y += vsp;
}