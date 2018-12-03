draw_circle_color(60,420,43,c_black,c_black,false);
draw_circle_color(60,420,hpCircleRadius,c_red,c_red,false);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(60,420,string(obj_player.hp)+"/"+string(obj_player.maxHp),1.3,1.3,0);

draw_circle_color(580,420,43,c_black,c_black,false);
draw_circle_color(580,420,xpCircleRadius,c_lime,c_green,false);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(580,420,string(obj_player.experience)+"/"+string(obj_player.experienceNeeded),1.3,1.3,0);

if (obj_player.sp > 0) {
	draw_sprite(spr_levelUpMenu,0,levelUpCoords[0],levelUpCoords[1]);
}