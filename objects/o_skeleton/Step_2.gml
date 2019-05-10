if hp < 1
{
	set_state_sprite(Skeleton_Dead, 0.6, 0)
	state = "Died"
	if animation_end() 
	{
		instance_destroy();
	
		repeat(souls)
		{
		instance_create_layer(x + random_range(-4, 4), y + random_range(-4, 4), "Effects", o_souls)
		}

	}

}