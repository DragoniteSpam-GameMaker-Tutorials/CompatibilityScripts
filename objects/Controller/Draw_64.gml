/// @description  Draw the HUD

draw_set_color(c_white);
draw_rectangle(WIDTH-160, 0, WIDTH, HEIGHT, false);
draw_set_color(c_black);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(WIDTH-128, 32, "Lives: "+string(roundLives));
if (wave<0)
    draw_text(WIDTH-128, 64, "Wave #: --");
else
    draw_text(WIDTH-128, 64, "Wave #: "+string(wave));
draw_text(WIDTH-128, 96, "Remaining: "+string(enemiesRemaining));
draw_text(WIDTH-128, 128, "Currency: "+string(currency));

