/// @description Insert description here
// You can write your code in this editor
if hp <1{
	if hp < 1
{
	set_state_sprite(Hero_Dead, 0.2, 0)
	state = "Died"
	if animation_end() 
	{
		room_goto(r_main_menu);
	
	}

}
}
