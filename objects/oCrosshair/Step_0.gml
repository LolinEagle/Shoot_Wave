scCameraGetView();
if(room != room_first){
	x = cx + (mouse_x - cx) * (2 / 3);
	y = cy + (mouse_y - cy) * (2 / 3);
}else{
	x = mouse_x;
	y = mouse_y;
}