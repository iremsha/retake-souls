if creator == noone or creator == other
{
	exit
}

other.hp -= damage
audio_play_sound(sound_hit, 1000, false)

if instance_exists(o_hero)
{
	if other.hp > 0
	{
		repeat(10)
		{
			instance_create_layer(other.x, other.y-12, "Effects", o_hit_effect)
		}
	}
	/// Во второй колизии посмотри какой тут иф, и понять что с ним не так, на нём 2 бага лежит..
	
	if other.object_index != o_hero
	{
		other.alarm[0] = 160
	}
	other.state = "Knockback"
	other.knockback_speed = knockback * image_xscale
}
	
