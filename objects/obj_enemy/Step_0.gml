targetX = obj_player.x - x;
targetY = obj_player.y - y;
deg = getAngle(targetX,targetY);
visionRange = 200;

var _targetX = sin(deg)*spd;
var _targetY = -cos(deg)*spd;

if (place_meeting(x+_targetX, y, obj_wall)) {
	while (!place_meeting(x+_targetX, y, obj_wall)) {
		x += _targetX;
	}
	_targetX = 0;
}

if (place_meeting(x, y+_targetY, obj_wall)) {
	while (!place_meeting(x, y+_targetY, obj_wall)) {
		y += _targetY;
	}
	_targetY = 0;
}

if (distance_to_point(obj_player.x,obj_player.y) < visionRange) {
	x += _targetX;
	y += _targetY;
}
