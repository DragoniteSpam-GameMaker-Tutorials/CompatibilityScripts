/// @description  Bullet towerBehaviorDefault(bullet type, bullet speed);
/// @param bullet type
/// @param  bullet speed
if (activated==true){
    // if the nearest enemy is within the attack radius, shoot
    if (instance_number(Enemy)>0 and canFire){
        var e=instance_nearest(x, y, Enemy);
        if (distance_to_object(e)<=range){
            var b=instance_create(x, y, argument0);
            with (b){
                target=instance_nearest(x, y, Enemy);
                direction=point_direction(x, y, target.x, target.y);
                speed=argument1;
            }
            b.attack=self.attack;
            canFire=false;
            alarm[0]=room_speed/rate;
            
            return b;
        }
    }
} else {
    // Follow the mouse cursor around if waiting to be placed down
    x=mouse_x;
    y=mouse_y;
}

return noone;
