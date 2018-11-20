x += vel[0];
y += vel[1];

lifetime -= 1;
if (lifetime <= 0) {
	instance_destroy(self,false);
}

for (var i = array_length_1d(obj_roomManager.enemies)-1; i > -1; i--) { 
	show_debug_message(array_length_1d(obj_roomManager.enemies));
	if (place_meeting(x, y, obj_roomManager.enemies[i])) {
		instance_destroy(self,false);
		obj_roomManager.enemies[i].hp -= 1;
	}
}
