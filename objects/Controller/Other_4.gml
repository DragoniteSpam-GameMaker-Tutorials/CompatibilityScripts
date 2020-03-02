alarm[0]=room_speed;
roundLives=10;
currency=50;
following=noone;

wave=-1;
enemiesRemaining=0;

finished=true;

for (var i=0; i<room_width; i+=64){
    for (var j=room_height-128; j<room_height; j+=64){
        instance_create(i, j, InvisibleWall);
    }
}

for (var i=room_width-160; i<room_width; i+=64){
    for (var j=0; j<room_height-128; j+=64){
        instance_create(i, j, InvisibleWall);
    }
}

button_tower_regular=instance_create(64, 672, ClickableButton);
button_tower_regular.type=button_actions.create_tower;
button_tower_regular.tower_type=Tower;
button_tower_regular.tower_cost=10;

button_tower_fast=instance_create(64, 704, ClickableButton);
button_tower_fast.type=button_actions.create_tower;
button_tower_fast.tower_type=TowerFast;
button_tower_fast.tower_cost=12;

button_tower_slow=instance_create(64, 736, ClickableButton);
button_tower_slow.type=button_actions.create_tower;
button_tower_slow.tower_type=TowerSlow;
button_tower_slow.tower_cost=12;

button_tower_fire=instance_create(384, 672, ClickableButton);
button_tower_fire.type=button_actions.create_tower;
button_tower_fire.tower_type=TowerOfFire;
button_tower_fire.tower_cost=50;

