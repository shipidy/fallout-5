// movement keys
up_key = keyboard_check(ord("W"))
down_key = keyboard_check(ord("S"))
left_key = keyboard_check(ord("A"))
right_key = keyboard_check(ord("D"))

mv_speed = 4
x_movement = right_key - left_key
y_movement = down_key - up_key

if (x_movement > 0) {facing = RIGHT}
if (x_movement < 0) {facing = LEFT}
if (y_movement > 0) {facing = DOWN}
if (y_movement < 0) {facing = UP}

if (x_movement == 0 and y_movement == 0) {
	state = IDLE
	image_index = 0
}

sprite_index = player_anims[state][facing]

x += x_movement * mv_speed
y += y_movement * mv_speed