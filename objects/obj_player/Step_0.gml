/// @desc Collision
xAxis = keyboard_check(vk_right) - keyboard_check(vk_left);
yAxis = keyboard_check(vk_down) - keyboard_check(vk_up);

var _direction = point_direction(0, 0, xAxis, yAxis);
var _length = spd*(xAxis != 0 || yAxis != 0);

xAxis = lengthdir_x(_length, _direction);
yAxis = lengthdir_y(_length, _direction);

if (place_meeting(x+xAxis, y, obj_collision)) {
	while (!place_meeting(x+sign(xAxis), y, obj_collision)) {
		x += sign(xAxis);
	}
	xAxis = 0;
}
if (place_meeting(x, y+yAxis, obj_collision)) {
	while (!place_meeting(x, y+sign(yAxis), obj_collision)) {
		y += sign(yAxis);
	}
	yAxis = 0;
}

x += xAxis;
y += yAxis;