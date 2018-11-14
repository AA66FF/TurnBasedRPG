targetX = obj_player.x - x;
targetY = obj_player.y - y;

var _targetX = sign(targetX)*spd;
var _targetY = sign(targetY)*spd;

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

x += _targetX;
y += _targetY;
