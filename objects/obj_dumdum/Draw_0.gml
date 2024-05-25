draw_set_font(fnt_bbc)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
if obj_camera.follow == obj_player
{
	draw_text_color(x,y+5,"enter = switch to",c_maroon,c_olive,c_fuchsia,c_white,1)
}
if obj_camera.follow == obj_dumdum 
{
	draw_text_color(obj_player.x,obj_player.y-100,"left alt = switch to",c_maroon,c_olive,c_fuchsia,c_white,1)
}
draw_self()
