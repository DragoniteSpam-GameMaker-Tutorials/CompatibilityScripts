/// @description  Cancel the tower instead of placing it

if (following!=noone){
    with (following)
        instance_destroy();
    following=noone;
}

