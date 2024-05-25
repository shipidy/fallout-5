// movement keys
up_key = keyboard_check(ord("W")) or keyboard_check(vk_up)
left_key = keyboard_check(ord("A")) or keyboard_check(vk_left)
down_key = keyboard_check(ord("S")) or keyboard_check(vk_down)
right_key = keyboard_check(ord("D")) or keyboard_check(vk_right)
sprintkey = keyboard_check(vk_shift)
//sprintkey_release = keyboard_check_released(vk_shift)

test_key = keyboard_check(ord("J"))

mv_speed = 7
x_movement = right_key - left_key
y_movement = down_key - up_key

//if (test_key) {sprint_bar = 50}

if (y_movement == 0) {
	if (x_movement > 0) {facing = RIGHT}
	if (x_movement < 0) {facing = LEFT}
}

if (x_movement == 0) {
	if (y_movement > 0) {facing = DOWN}
	if (y_movement < 0) {facing = UP}
}

if (x_movement == 0 and y_movement == 0) {
	state = IDLE
	image_index = 0
}

sprite_index = player_anims[state][facing]

// diagonal speeding up movement
if x_movement != 0 and y_movement != 0 {
	x_movement *= 0.707
	y_movement *= 0.707
}

/* sprinting will be used later on 

if (sprintkey) {
	sprinting = true
	sprint_bar -= 1
}

// sprint regen
if (sprint_bar <= 0) {
	sprintkey = 0
	if (alarm[0] == -1) {alarm[0] = 120}
}

if (regen_sprint) {sprint_bar += 3; sprintkey = 0}
if (sprint_bar >= 100) {alarm[0] = -1; regen_sprint = false}
*/
 
 //sprint is now walk
 
 if sprintkey == 1 
	{mv_speed = mv_speed*0.5;image_speed = 0.7}
 else 
	{mv_speed = defmv_speed; image_speed = 1*speedmult}
 
x += x_movement * mv_speed 
y += y_movement * mv_speed 