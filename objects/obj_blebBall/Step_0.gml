x += vel[0];
y += vel[1];

lifetime -= 1;
if (lifetime <= 0) {
	instance_destroy(self,false);
}

if (place_meeting(x, y, obj_player)) {
	instance_destroy(self,false);
}
if (place_meeting(x, y, obj_wall)) {
	instance_destroy(self,false);
}
