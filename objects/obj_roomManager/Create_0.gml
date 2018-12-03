enemies = [];
enemyArchives = [];
currentRoom = rm_cave;
rng = 0;

for (var i = 0; i < 2; i++) {
	enemyArchives[i] = [];
}

if (room == rm_cave) {
	enemies[0] = instance_create_layer(250,104,"Instances",obj_bleb);
}