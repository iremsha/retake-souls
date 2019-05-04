if creator == noone or creator == other
{
	exit
}

other.hp -= damage

if instance_exists(o_hero) and creator.object_index == o_hero and other.hp <= 0
{
	o_hero.souls += 10 + irandom_range(0, 5)
}
other.state = "Knockback"
other.knockback_speed = knockback * image_xscale

	
 