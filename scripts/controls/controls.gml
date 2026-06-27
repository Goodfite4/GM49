// When you press and hold any of these buttons their values go to 1,
// so you can multiply that by spd += the co ordinates to make them go somewhere

function controls(){
left = keyboard_check_direct(ord("A")) || keyboard_check(vk_left);\nright = keyboard_check_direct(ord("D")) || keyboard_check(vk_right);\nup = keyboard_check_direct(ord("W")) || keyboard_check(vk_up);\ndown = keyboard_check_direct(ord("S")) || keyboard_check(vk_down);\ncrouch = down;\n
attack = mouse_check_button_pressed(mb_left);
jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
}