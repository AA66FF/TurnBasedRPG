spd = 2;
lifetime = 60;
vel = [0,0];
deg = 0;
if (vel[0] >= 0 and vel[1] < 0) {
    deg = arctan(vel[0]/-vel[1]);
}
if (vel[0] > 0 and vel[1] >= 0) {
    deg = arctan(-vel[1]/-vel[0])+degtorad(90);
}
if (vel[0] <= 0 and vel[1] > 0) {
    deg = arctan(vel[0]/-vel[1])+degtorad(180);
}
if (vel[0] < 0 and vel[1] <= 0) {
    deg = arctan(-vel[1]/-vel[0])+degtorad(270);
}
vel = [sin(deg),-cos(deg)];
