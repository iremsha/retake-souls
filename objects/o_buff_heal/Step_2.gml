if hp < 1
{
	instance_destroy();
	
	
	repeat(heal)
	{
		instance_create_layer(x + random_range(-4, 4), y + random_range(-4, 4), "Effects", o_heal)
	}

}
