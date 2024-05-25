if (obj_camera.follow != noone)
{
	xTo = obj_camera.follow.x
	yTo = obj_camera.follow.y
}

x += (xTo - x)/speedcam
y += (yTo - y)/speedcam

camera_set_view_pos(view_camera[0],x-(camwid*0.5),y-(camhei*0.5))