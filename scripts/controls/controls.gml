// When you press and hold any of these buttons their values go to 1,
// so you can multiply that by spd += the co ordinates to make them go somewhere

function controls(){
left = keyboard_check_direct(ord("A"));
right = keyboard_check_direct(ord("D"));
up = keyboard_check_direct(ord("W"));
down = keyboard_check_direct(ord("S"));
attack = mouse_check_button_pressed(mb_left);
jump = keyboard_check_pressed(vk_space);
}