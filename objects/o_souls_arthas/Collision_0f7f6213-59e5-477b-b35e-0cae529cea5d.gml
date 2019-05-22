if not instance_exists(other) exit

with (other)
{
o_hero.souls += 3 + irandom_range(0, 3)
	audio_play_sound(sound_souls, 1000, false)
}

instance_destroy()