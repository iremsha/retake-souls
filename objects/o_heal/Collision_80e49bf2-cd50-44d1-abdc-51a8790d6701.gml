/// @description Insert description here
// You can write your code in this editor
if ((o_hero.hp + hp_bonus) < o_hero.max_hp){
	o_hero.hp += hp_bonus;
	instance_destroy();
} else if o_hero.hp + hp_bonus  == o_hero.max_hp + hp_bonus {
	o_hero.hp = o_hero.hp;
} else if ((o_hero.hp + hp_bonus) > o_hero.max_hp){
	
	residue = o_hero.max_hp - o_hero.hp;
	o_hero.hp += residue;
	instance_destroy();
	 
}