if not instance_exists(other) exit

with (other)
{
	o_hero.souls += 1 + irandom_range(0, 2)
	audio_play_sound(sound_souls, 1000, false)
}

instance_destroy()