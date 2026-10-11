///@desc Update Camera
if(instance_exists(oPlayer)){
	x = oPlayer.x;
	y = oPlayer.y;
	camera_set_view_size(cam, RES_W * 1.5, RES_H * 1.5);
}