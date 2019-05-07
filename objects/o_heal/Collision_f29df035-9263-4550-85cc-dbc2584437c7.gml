if not instance_exists(other) exit

var hp_bonus = 1
with (other)
{
	if ((o_hero.hp + hp_bonus) < o_hero.max_hp){
	o_hero.hp += hp_bonus;
} else if o_hero.hp + hp_bonus  == o_hero.max_hp + hp_bonus {
	o_hero.hp = o_hero.hp;
} else if ((o_hero.hp + hp_bonus) > o_hero.max_hp){
	
	residue = o_hero.max_hp - o_hero.hp;
	o_hero.hp += residue;
	 
}
	audio_play_sound(sound_souls, 1000, false)
}

instance_destroy()
