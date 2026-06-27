// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement(_directions){
	
hsp = (right - left)* spd;

if _directions == "2d" { if !on_floor() { vsp += global.gravity_var } else { vsp = 0 }
} 

if _directions == "4d" {vsp = (down - up)* spd;}


}