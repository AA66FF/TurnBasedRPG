dx = argument0;
dy = argument1;
deg = 0;
if (dx >= 0 and dy < 0) {
	deg = arctan(dx/-dy);
}
if (dx > 0 and dy >= 0) {
	deg = arctan(-dy/-dx)+degtorad(90);
}
if (dx <= 0 and dy > 0) {
	deg = arctan(dx/-dy)+degtorad(180);
}
if (dx < 0 and dy <= 0) {
	deg = arctan(-dy/-dx)+degtorad(270);
}
return deg;