/// @description  Draw self, and HP

draw_self();
var f=hp/maxHP;
if (f>0.5)
    var c=c_green;
else if (f>0.25)
    var c=c_yellow;
else
    var c=c_red;

draw_healthbar(x-16, y-32, x+16, y-24, 100*f, c_white, c, c, 0, false, false);
draw_set_color(c_black);
draw_rectangle(x-16, y-32, x+16, y-24, true);

if (fire_strength>0){
    /// put something else in here eventually
}

