if (activated==false){
    // Place down (and deduct cost)
    if (!collision_point(x, y, Tower, false, true) and
                !collision_point(x, y, InvisibleWall, false, true)){
        activated=true;
        currency-=following.cost;
        following=noone;
    }
}

// Deselect any other towers, and then select self
with (Tower){
    selected=false;
}

self.selected=true;

