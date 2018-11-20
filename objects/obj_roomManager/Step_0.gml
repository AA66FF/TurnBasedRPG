if (room != currentRoom) {
	enemies = [];
}

rng = random(1);

if (room == rm_overworld and obj_player.y > 6010 and obj_player.x >= 4975 and obj_player.x <= 5031) {
	room_goto(rm_cave);
	obj_player.x = 167;
	obj_player.y = -5;
}

if (room == rm_overworld and rng > 0.99) {
	var _end = array_length_1d(enemies);
	enemies[_end] = instance_create_layer(random(10000),random(6000),"Instances",obj_bleb);
}

if (room == rm_cave and obj_player.y < -10) {
	room_goto(rm_overworld);
	obj_player.x = 5000;
	obj_player.y = 5999;
}