/// @description  Draw the tower (and its range)
/// @param and its range

draw_self();
if (selected){
    draw_set_color(c_black);
    draw_circle(x, y, range, true);
}

// Stats of selected tower are dealt with in the Draw GUI event

