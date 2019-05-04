if !instance_exists(o_hero) exit

var	dir = point_direction(x, y, o_hero.x, o_hero.y)
var	acceleration = 0.25
motion_add(dir, acceleration)

var max_speed = 6
if speed > max_speed
{
	speed = max_speed
}	