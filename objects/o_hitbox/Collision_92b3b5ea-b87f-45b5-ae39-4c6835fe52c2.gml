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

	if creator.object_index == o_hero and other.hp <= 0
	{
		o_hero.souls += 10 + irandom_range(0, 5)
	}
	
	if other.object_index != o_hero
	{
		other.alarm[0] = 120
	}
	other.state = "Knockback"
	other.knockback_speed = knockback * image_xscale
}
	
