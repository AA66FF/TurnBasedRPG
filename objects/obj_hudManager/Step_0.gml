hpCircleRadius = 40*(obj_player.hp/obj_player.maxHp);
xpCircleRadius = 40*(obj_player.experience/obj_player.experienceNeeded);

levelUpCoords = [252,300];

wx = window_mouse_get_x();
wy = window_mouse_get_y();

if (obj_player.sp > 0) {
	if (mouse_check_button_released(mb_left) and wx >= levelUpCoords[0]+6 and wy >= levelUpCoords[1]+34 
	and wx <= levelUpCoords[0]+64 and wy <= levelUpCoords[1]+92) {
		obj_player.magicDamage += 1;
		obj_player.sp -= 1;
	}
	if (mouse_check_button_released(mb_left) and wx >= levelUpCoords[0]+70 and wy >= levelUpCoords[1]+34 
	and wx <= levelUpCoords[0]+128 and wy <= levelUpCoords[1]+92) {
		obj_player.spd += 0.3;
		obj_player.sp -= 1;
	}
	if (mouse_check_button_released(mb_left) and wx >= levelUpCoords[0]+6 and wy >= levelUpCoords[1]+98 
	and wx <= levelUpCoords[0]+64 and wy <= levelUpCoords[1]+156) {
		obj_player.fireRate *= 0.8;
		obj_player.magicSpeed += 0.5;
		obj_player.sp -= 1;
	}
	if (mouse_check_button_released(mb_left) and wx >= levelUpCoords[0]+70 and wy >= levelUpCoords[1]+98 
	and wx <= levelUpCoords[0]+128 and wy <= levelUpCoords[1]+156) {
		obj_player.maxHp += 5;
		obj_player.hp = obj_player.maxHp;
		obj_player.sp -= 1;
	}
}