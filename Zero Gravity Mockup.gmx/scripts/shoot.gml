/// shoot(rate_of_fire, bullet_speed, bullet_mass, bullet_damage)

// rate_of_fire = argument0
// bullet_speed = argument1
// bullet_mass = argument2
// bullet_damage = argument3

if obj_testplayer.bullet_ready >= argument0
{
    shoot_x = mouse_x - obj_testplayer.x;  // relative x between sprite and cursor
    shoot_y = mouse_y - obj_testplayer.y;  // ditto for y
    shoot_length = point_distance(0,0,shoot_x,shoot_y);  //length of the x and y vectors
    bullet = instance_create(x + obj_testplayer.bullet_offset * (shoot_x/shoot_length), y + obj_testplayer.bullet_offset * (shoot_y/shoot_length), obj_bullet);

    bullet.direction = obj_testplayer.image_angle;
    obj_testplayer.hspeed -= shoot_x / shoot_length * argument1 * argument2 / obj_testplayer.mass;
    obj_testplayer.vspeed -= shoot_y / shoot_length * argument1 * argument2 / obj_testplayer.mass;

    // bullet stats
    with bullet
    {
    speed = argument1;
    mass = argument2;
    damage = argument3;
    }
    
    obj_testplayer.bullet_ready = 0;
}
