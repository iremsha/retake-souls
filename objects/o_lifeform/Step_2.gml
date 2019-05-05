if hp < 1
{
	instance_destroy();
	
	
	repeat(souls)
	{
		instance_create_layer(x + random_range(-4, 4), y + random_range(-4, 4), "Effects", o_souls)
	}

}

