enemies = [];
currentRoom = rm_cave;
rng = 0;

if (room == rm_cave) {
	enemies[0] = instance_create_layer(80,96,"Instances",obj_bleb);
	enemies[1] = instance_create_layer(260,60,"Instances",obj_bleb);
}