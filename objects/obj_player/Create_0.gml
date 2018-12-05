/// @desc Initialize
xAxis = 0;
yAxis = 0;
deg = 0;
spacePressed = false;
spd = 1.5;
magicDamage = 1;
fireRate = 50;
shotsPerMinute = 0;
cooldown = 0;
magicLifetime = 40;
magicSpeed = 2.5;
hp = 10;
maxHp = 10;
sp = 0;
level = 1;
experience = 0;
experienceNeeded = 10;
regenCooldown = 400;
regenCooldownAdd = 400;
dir = DOWN;
action = IDLE;

view[RIGHT,IDLE] = spr_playerright;
view[UP,IDLE] = spr_playerup;
view[LEFT,IDLE] = spr_playerleft;
view[DOWN,IDLE] = spr_playerdown;
view[UPRIGHT,IDLE] = spr_playerright;
view[DOWNRIGHT,IDLE] = spr_playerright;
view[UPLEFT,IDLE] = spr_playerleft;
view[DOWNLEFT,IDLE] = spr_playerleft;

view[RIGHT,WALK] = spr_playerright;
view[UP,WALK] = spr_playerup;
view[LEFT,WALK] = spr_playerleft;
view[DOWN,WALK] = spr_playerdown;
view[UPRIGHT,WALK] = spr_playerright;
view[DOWNRIGHT,WALK] = spr_playerright;
view[UPLEFT,WALK] = spr_playerleft;
view[DOWNLEFT,WALK] = spr_playerleft;
