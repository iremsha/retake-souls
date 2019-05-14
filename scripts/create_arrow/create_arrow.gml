var x_pos = argument0
var y_pos = argument1
var xscale = argument2

var fire_ball = instance_create_depth(x_pos, y_pos, -10000, o_arrow)
fire_ball.image_xscale = xscale
fire_ball.image_speed = 0.5