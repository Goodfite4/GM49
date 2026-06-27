/// @description Insert description here
// You can write your code in this editor
controls();

movement("2d");

if on_floor() and jump { 
	vsp = jump_spd;
	}
	
collision();

boundaries();