// these are the last frame numbers of each
// walking anim in the player sprite
// the first frame will be the max - 3
player_anims[WALKING][DOWN] = spr_walk_down
player_anims[WALKING][LEFT] = spr_walk_left
player_anims[WALKING][RIGHT] = spr_walk_right
player_anims[WALKING][UP] = spr_walk_up

player_anims[IDLE][DOWN] = spr_walk_down
player_anims[IDLE][LEFT] = spr_walk_left
player_anims[IDLE][RIGHT] = spr_walk_right
player_anims[IDLE][UP] = spr_walk_up


// direction
facing = DOWN
state = WALKING