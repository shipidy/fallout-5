if keyboard_check(vk_enter) {enteree=1}
else {enteree=0}

if keyboard_check(vk_ralt) {skibi=1}
else {skibi=0}

if enteree == 1 && obj_camera.follow == obj_player
{obj_camera.follow = obj_dumdum}
if skibi == 1 && obj_camera.follow == obj_dumdum
{obj_camera.follow = obj_player}