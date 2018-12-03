/// @desc Collision

getInput();

if (xAxis > 0 and yAxis == 0 and cooldown < ceil(fireRate*0.8)) {
	dir = RIGHT;
} else if (xAxis < 0 and yAxis == 0 and cooldown < ceil(fireRate*0.8)) {
	dir = LEFT;
} else if (xAxis == 0 and yAxis > 0 and cooldown < ceil(fireRate*0.8)) {
	dir = DOWN;
} else if (xAxis == 0 and yAxis < 0 and cooldown < ceil(fireRate*0.8)) {
	dir = UP;
} else if (xAxis > 0 and yAxis > 0 and cooldown < ceil(fireRate*0.8)) {
	dir = DOWNRIGHT;
} else if (xAxis < 0 and yAxis > 0 and cooldown < ceil(fireRate*0.8)) {
	dir = DOWNLEFT;
} else if (xAxis > 0 and yAxis < 0 and cooldown < ceil(fireRate*0.8)) {
	dir = UPRIGHT;
} else if (xAxis < 0 and yAxis < 0 and cooldown < ceil(fireRate*0.8)) {
	dir = UPLEFT;
}

if (xAxis == 0 and yAxis == 0 or cooldown > ceil(fireRate*0.8)) {
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

if (cooldown < ceil(fireRate*0.8)) {
	x += xAxis;
	y += yAxis;
}

if (regenCooldown <= 0 and hp < maxHp) {
	hp += 1;
	regenCooldown = regenCooldownAdd;
}

sprite_index = view[dir,action];

if (action == WALK) {
	image_speed = 2;
} else if (action == IDLE) {
	image_speed = 0;
	image_index = 0;
}

if (dir == UP) {
	deg = 0;
} else if (dir == UPRIGHT) {
	deg = 45;
} else if (dir == RIGHT) {
	deg = 90;
} else if (dir == DOWNRIGHT) {
	deg = 135;
} else if (dir == DOWN) {
	deg = 180;
} else if (dir == DOWNLEFT) {
	deg = 225;
} else if (dir == LEFT) {
	deg = 270;
} else if (dir == UPLEFT) {
	deg = 315;
}

if (spacePressed == true and cooldown <= 0) {
	cooldown = fireRate;
}

if (cooldown == ceil(fireRate*0.8)) {
	ball = instance_create_layer(x,y,"Instances",obj_magic);
	ball.vel = [sin(degtorad(deg))*magicSpeed,-cos(degtorad(deg))*magicSpeed];
	ball.lifetime = magicLifetime;
	ball.damage = magicDamage;
}

if (experience >= experienceNeeded) {
	level += 1;
	experience = 0;
	experienceNeeded += 10;
	hp = maxHp;
	sp += 1;
}

if (hp <= 0) {
	game_restart();
}

cooldown -= 1;
regenCooldown -= 1;