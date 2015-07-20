/// scr_spawn_player(x_coord, y_coord, mass, gun_type, player_health, team)

// x_coord = argument0
// y_coord = argument1
// mass = argument2
// gun_type = argument3
// health = argument4
// team = argument5

player = instance_create(argument0, argument1, obj_testplayer);

// player stats
with player
{
    mass = argument2;
    gun_type = argument3;
    player_health = argument4;
    team = argument5;
}
