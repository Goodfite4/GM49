// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controls(){
left = keyboard_check(ord("A")) || keyboard_check(vk_left);
right = keyboard_check_direct(ord("D")) || keyboard_check(vk_right);
crouch = keyboard_check_direct(ord("S")) || keyboard_check(vk_down);
attack = mouse_check_button_pressed(mb_left);
jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
}