if (room != currentRoom) {
	for (var i = 0; i < 2; i++) {
		for (var j = 0; j < 2; j++) {
			if (i != j and room == roomIndex(i) and currentRoom == roomIndex(j)) {
				enemyArchive[j] = enemies;
				enemies = enemyArchive[i];
			}
		}
	}
	currentRoom = room;
}

rng = random(1);

var _newEnemies = [];
enemyNumber = 0;
for (var i = array_length_1d(enemies)-1; i > -1; i--) {
	if (enemies[i].dead == true) {
		instance_destroy(enemies[i],true);
	} else {
		_newEnemies[enemyNumber] = enemies[i];
		enemyNumber += 1;
	}
}
enemies = _newEnemies;

show_debug_message(array_length_1d(enemies));

if (room == rm_overworld and obj_player.y > 6010 and obj_player.x >= 4975 and obj_player.x <= 5031) {
	room_goto(rm_cave);
	obj_player.x = 167;
	obj_player.y = -5;
}

if (room == rm_overworld and rng > 0.75 and array_length_1d(enemies) < 200) {
	var _end = array_length_1d(enemies);
	enemies[_end] = instance_create_layer(random(10000),random(6000),"Instances",obj_bleb);
}

if (room == rm_cave and obj_player.y < -10) {
	room_goto(rm_overworld);
	obj_player.x = 5000;
	obj_player.y = 5999;
}