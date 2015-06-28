/// shoot(rate_of_fire, bullet_speed, bullet_mass, bullet_damage)

// rate_of_fire = argument0
// bullet_speed = argument1
// bullet_mass = argument2
// bullet_damage = argument3

if obj_testplayer.bullet_ready >= argument0
{
    shot_angle=point_direction(obj_testplayer.x,obj_testplayer.y,mouse_x,mouse_y);
    bullet = instance_create(x + obj_testplayer.bullet_offset * dcos(shot_angle), y + obj_testplayer.bullet_offset * dsin(shot_angle), obj_bullet);

    bullet.direction = obj_testplayer.image_angle;
    obj_testplayer.hspeed -= dcos(shot_angle) * argument1 * argument2 / obj_testplayer.mass;
    obj_testplayer.vspeed += dsin(shot_angle) * argument1 * argument2 / obj_testplayer.mass;

    // bullet stats
    with bullet
    {
    speed = argument1;
    mass = argument2;
    damage = argument3;
    }
    
    obj_testplayer.bullet_ready = 0;
}
