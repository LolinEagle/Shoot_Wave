///@desc Hud Player
if(!global.gamePaused){
	scDrawSet(fArial24, fa_left, fa_top);

	draw_rectangle(0, 0, 400, 88, false);
	draw_set_color(c_dkgray);
	draw_rectangle(0, 0, 398, 86, false);

	//Heal Player
	draw_set_color(c_blue);
	draw_text(8, 8, "Heal");
	draw_healthbar(
		80,
		8,
		380,
		40,
		global.healPlayer,
		c_black,
		c_blue,
		c_blue,
		0,
		true,
		false
	);
	
	//Ammo
	draw_set_color(c_white);
	switch(weaponSlot){
		case 0: 
			draw_sprite(sKnife, 0, 12, 48);
		break;
		case 1:
			draw_text(12, 48, scString(handgun, handgunMax) + " Handgun");
		break;
		case 2:
			draw_text(12, 48, scString(shotgun, shotgunMax) + " Shotgun");
		break;
		case 3:
			draw_text(12, 48, scString(rifle, rifleMax) + " Rifle");
		break;
		default: break;
	}
}