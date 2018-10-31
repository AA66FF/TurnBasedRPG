/// @desc Initialize
xAxis = 0;
yAxis = 0;
spd = 1.5;
dir = DOWN;
action = IDLE;

view[RIGHT,IDLE] = spr_playerright;
view[UP,IDLE] = spr_playerup;
view[LEFT,IDLE] = spr_playerleft;
view[DOWN,IDLE] = spr_playerdown;

view[RIGHT,WALK] = spr_playerright;
view[UP,WALK] = spr_playerup;
view[LEFT,WALK] = spr_playerleft;
view[DOWN,WALK] = spr_playerdown;
