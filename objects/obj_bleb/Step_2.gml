var _dist = sqrt(power(abs(obj_player.x - x),2)+power(abs(obj_player.y - y),2));

if (_dist < range and fireCooldown <= 0) {
	ball = instance_create_layer(x,y,"Instances",obj_blebBall);
	var _deg = getAngle(obj_player.x - x, obj_player.y - y);
	ball.vel = [sin(_deg)*ballSpd,-cos(_deg)*ballSpd];
	ball.lifetime = ballLifetime;
	fireCooldown = fireCooldownAdd;
}

if (hp <= 0) {
	instance_destroy(self,false);
}

fireCooldown -= 1;