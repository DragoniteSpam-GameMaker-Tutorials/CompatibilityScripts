/// @description  Create a new tower, but only if you can

switch (type){
    case button_actions.create_tower:
        if (following==noone){
            if (currency>=tower_cost){
                following=instance_create(mouse_x, mouse_y, tower_type);
                following.cost=tower_cost;
            }
        }
        break;
    case button_actions.quit_game:
        game_end();
        break;
}

