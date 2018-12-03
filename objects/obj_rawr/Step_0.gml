targetX = obj_player.x - x;
targetY = obj_player.y - y;
deg = getAngle(targetX,targetY);

var _targetX = sin(deg)*spd;
var _targetY = -cos(deg)*spd;

if (place_meeting(x+_targetX, y, obj_player)) {
	while (!place_meeting(x+_targetX, y, obj_player)) {
		x += _targetX;
	}
	_targetX = 0;
}

if (place_meeting(x, y+_targetY, obj_player)) {
	while (!place_meeting(x, y+_targetY, obj_player)) {
		y += _targetY;
	}
	_targetY = 0;
}

if (sign(targetX) == -1) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if (moveCooldown <= -90) {
	spd = 3;
} else if (moveCooldown <= -60) {
	spd = 1.75;
} else if (moveCooldown <= -30) {
	spd = 1.25;
} else {
	spd = 0.75;
}

if (distance_to_point(obj_player.x,obj_player.y) < visionRange) {
	if (moveCooldown < 0) {
		x += _targetX;
		y += _targetY;
	}
	moveCooldown -= 1;
}



