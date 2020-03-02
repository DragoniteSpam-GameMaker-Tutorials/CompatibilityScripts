if (selected){
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
    
    draw_text(WIDTH-128, 160, string_hash_to_newline("Attack: "+string(attack)));
    draw_text(WIDTH-128, 192, string_hash_to_newline("Range: "+string(range)));
    draw_text(WIDTH-128, 224, string_hash_to_newline("Fire Rate: "+string(rate)));
    
    // Anything else that might be relevant
}

