/// @description  Spawn a new enemy, or a new wave

if (enemiesRemaining==0){
    // The next wave needs to start
    if (wave+1<array_length_1d(waveCount)){
        wave++;
        enemiesRemaining=waveCount[wave];
        alarm[0]=4*room_speed;
    } else {
        finished=true;
    }
} else {
    // Spawn a new enemy
    alarm[0]=room_speed;
    instance_create(0, 0, waveType[wave]);
    enemiesRemaining--;
}

