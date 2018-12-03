var _dist = sqrt(power(abs(obj_player.x - x),2)+power(abs(obj_player.y - y),2));

if (_dist < range and fireCooldown <= 0) {
	fireCooldown = fireCooldownAdd;
	moveCooldown = moveCooldownAdd;
}

if (fireCooldown == fireCooldownAdd-14) {
	var _deg = radtodeg(-deg)-90;
	ball = instance_create_layer(x+sin(deg)*25,y-cos(deg)*21+4,"Instances",obj_slice);
	ball.image_angle = _deg;
	ball.lifetime = ballLifetime;
}

if (hp <= 0) {
	dead = true;
}

fireCooldown -= 1;