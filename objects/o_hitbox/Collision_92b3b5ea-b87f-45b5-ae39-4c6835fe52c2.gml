if creator == noone or creator == other
{
	exit
}

other.hp -= damage
other.state = "Knockback"
other.knockback_speed = knockback * image_xscale

	
 