if hp < 1
{
	set_state_sprite(Heal_Die, 0.6, 0)
	if animation_end() 
	{
		instance_destroy();
	
	
		repeat(heal)
		{
			instance_create_layer(x + random_range(-4, 4), y + random_range(-4, 4), "Effects", o_heal)
		}

	}
}
