if hp < 1
{
	set_state_sprite(Skeleton_Dead, 1, 0)
	image_index = 0
	if animation_hit_frame(14)
	{
		image_speed = 0
	}
}