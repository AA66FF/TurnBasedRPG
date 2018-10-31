/// @desc Collision
xAxis = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxis = keyboard_check(vk_down) - keyboard_check(vk_up);

if (xAxis > 0) {
	dir = RIGHT;
} else if (xAxis < 0) {
	dir = LEFT;
} else if (yAxis > 0) {
	dir = DOWN;
} else if (yAxis < 0) {
	dir = UP;
}

if (xAxis == 0 and yAxis == 0) {
	action = IDLE;
} else {
	action = WALK;
}

var _direction = point_direction(0, 0, xAxis, yAxis);
var _length = spd*(xAxis != 0 || yAxis != 0);

xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

if (place_meeting(x+xAxis, y, obj_wall)) {
	while (!place_meeting(x+sign(xAxis), y, obj_wall)) {
		x += sign(xAxis);
	}
	xAxis = 0;
}
if (place_meeting(x, y+yAxis, obj_wall)) {
	while (!place_meeting(x, y+sign(yAxis), obj_wall)) {
		y += sign(yAxis);
	}
	yAxis = 0;
}

x += xAxis;
y += yAxis;

sprite_index = view[dir,action];

if (action == WALK) {
	image_speed = 2;
} else if (action == IDLE) {
	image_speed = 0;
	image_index = 0;
}