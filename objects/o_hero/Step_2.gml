/// @description Insert description here
// You can write your code in this editor
if hp <1{
	if hp < 1
{
	set_state_sprite(Hero_Dead, 0.2, 0)
	state = "Died"
	if animation_end() 
	{
		room_goto(last_lvl);
		x = 99;
		y = 159;
		hp = 26
		state = "Move"
	}

}
}
