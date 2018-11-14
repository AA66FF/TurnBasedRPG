var _dist = sqrt(power(abs(obj_player.x - x),2)+power(abs(obj_player.y - y),2));

if (_dist < range and fireCooldown <= 0) {
	ball = instance_create_layer(x,y,"Instances",obj_blebBall);
	ball.vel = [obj_player.x-x,obj_player.y-y];
	fireCooldown = fireCooldownAdd;
}
fireCooldown -= 1;