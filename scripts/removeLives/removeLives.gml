/// @description  removeLives(amount);
/// @param amount
roundLives-=argument0;
if (roundLives<=0){
    show_message("Game over.")
    game_restart();
}
