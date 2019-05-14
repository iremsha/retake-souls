var sprite_knockback = argument0
var next_state = argument1

set_state_sprite(sprite_knockback, 1, 0)
image_xscale = -sign(knockback_speed)
move_and_collide(knockback_speed, 0)

knockback_speed = approach_simple(knockback_speed, 0, 0.5)
if knockback_speed == 0
{
	state = next_state
			
}