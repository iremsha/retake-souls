if not instance_exists(other) exit

with (other)
{
	o_hero.souls += 1 + irandom_range(0, 2)
}

instance_destroy()