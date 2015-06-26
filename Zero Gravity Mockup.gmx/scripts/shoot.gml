/// shoot(rate_of_fire, bullet_speed, bullet_mass)

// rate_of_fire = argument0
// bullet_speed = argument1
// bullet_mass = argument2

// The "argumentX" thing is built into GML. Weird, I know.
// We don't need to set any argument variables or anything-- if you write with arguments
// 0, 1, and 2, GML assumes that our script takes three arguments.

// References:
// simple explanation: http://gmc.yoyogames.com/index.php?showtopic=495828
// an example script: http://www.gmlscripts.com/script/bit_clear

if obj_testplayer.bullet_ready == argument0
{
    shoot_x = mouse_x - obj_testplayer.x;  //x between sprite and cursor
    shoot_y = mouse_y - obj_testplayer.y;  // ditto for y
    shoot_length = distance_to_point(shoot_x, shoot_y);  //length of line from sprite to cursor
    bullet = instance_create(x+43*(shoot_x/shoot_length),y+43*(shoot_y/shoot_length),obj_bullet);
    bullet.direction = obj_testplayer.image_angle;
    obj_testplayer.hspeed -= shoot_x/shoot_length*obj_bullet.speed*obj_bullet.mass/obj_testplayer.mass;
    obj_testplayer.vspeed -= shoot_y/shoot_length*obj_bullet.speed*obj_bullet.mass/obj_testplayer.mass;

    obj_testplayer.bullet_ready = 0;
}
