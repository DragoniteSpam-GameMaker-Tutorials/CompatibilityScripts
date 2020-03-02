/// @description  Game setup

enum button_actions {
    create_tower,
    quit_game,
}

globalvar roundLives, currency, following, wave,
    enemiesRemaining, waveCount, waveType;

waveCount[0]=10;
waveCount[1]=15;
waveCount[2]=20;
waveCount[3]=15;
waveCount[4]=2;

waveType[0]=Enemy;
waveType[1]=EnemyFast;
waveType[2]=EnemySlow;
waveType[3]=EnemyImmuneToFire;
waveType[4]=EnemyBoss;

