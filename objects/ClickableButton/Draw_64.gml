/// @description  Create a new tower, but only if you can

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

switch (type){
    case button_actions.create_tower:
        draw_text(x+20, y-8, string_hash_to_newline(object_get_name(tower_type)));
        draw_text(x+20, y+8, string_hash_to_newline("Cost: "+string(tower_cost)));
        break;
    case button_actions.quit_game:
        draw_text(x+20, y, string_hash_to_newline("Quit Game"));
        break;
}

