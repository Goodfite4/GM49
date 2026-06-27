// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controls(){
left = keyboard_check_direct(ord("A"));
right = keyboard_check_direct(ord("D"));
crouch = keyboard_check_direct(ord("S"));
attack = mouse_check_button_pressed(mb_left);
jump = keyboard_check_pressed(vk_space);
}