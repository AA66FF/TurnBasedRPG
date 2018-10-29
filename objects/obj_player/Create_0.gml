/// @desc Initialize
xAxis = 0;
yAxis = 0;
spd = 1.5;
dir = DOWN;
action = IDLE;

view[RIGHT,IDLE] = spr_playerright;
view[UP,IDLE] = spr_playerupdown;
view[LEFT,IDLE] = spr_playerleft;
view[DOWN,IDLE] = spr_playerupdown;

view[RIGHT,WALK] = spr_playerright;
view[UP,WALK] = spr_playerupdown;
view[LEFT,WALK] = spr_playerleft;
view[DOWN,WALK] = spr_playerupdown;
