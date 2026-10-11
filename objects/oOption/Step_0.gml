///@desc Opttion Logic
scCameraGetView();

//Check if selected
if(mouse_check_button(mb_left) && place_meeting(x, y, oCrosshair)){
	selected = true;
}
if(!mouse_check_button(mb_left)){selected = false;}

//Logic
if(selected){
	if(oCrosshair.x > limitLeft && oCrosshair.x < limitRight){x = oCrosshair.x;}
	else if(oCrosshair.x <= limitLeft){x = limitLeft;}
	else if(oCrosshair.x >= limitRight){x = limitRight;}
	percentage = round(((x - limitLeft) / (limitRight - limitLeft)) * 100);
	global.gameOST = (x - limitLeft) / (limitRight - limitLeft);
}