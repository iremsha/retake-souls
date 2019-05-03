switch(state)
{
	case "Move":
		#region Move State
	if keyboard_check(ord("D"))
	{
		move_and_collide(4, 0)
		image_speed = 0.5
		image_xscale = 1
		sprite_index = s_run
	}

	if keyboard_check(ord("A"))
	{
		move_and_collide(-4, 0)
		image_speed = 0.5
		image_xscale = -1
		sprite_index = s_run
	}

	if not keyboard_check(ord("A")) and not keyboard_check(ord("D"))
	{
		set_state_sprite(s_Idle, 0.4, 0)
	}
	
	if keyboard_check_pressed(ord("W"))
	{
		image_index = 0
		state = "Roll"
	 
	}
	
	if keyboard_check_pressed(vk_space)
	{
		image_index = 0
		state = "Attack one"
		
	}
	#endregion
		break
		
	case "Roll":
		#region Roll State
	set_state_sprite(s_roll, 0.6, 0)
	if image_xscale == 1
	{
		move_and_collide(6, 0)
	}
	
	if image_xscale == -1 
	{
		move_and_collide(-6, 0)
	}
	#endregion
		break
		
	case "Attack one":
		#region Attack One State
	set_state_sprite(s_attack1, 0.6, 0)
	
	if keyboard_check_pressed(vk_space) and animation_hit_frame_range(4, 6)
	{
		image_index = 0
		state = "Attack two"
		
	}
	#endregion
		break
		
	case "Attack two":
		#region Attack Two  State
	set_state_sprite(s_attack2, 0.6, 0)
		
	if keyboard_check_pressed(vk_space) and animation_hit_frame_range(4, 6)
	{
		image_index = 0
		state = "Attack three"
		
	}
		#endregion
		break
		
	case "Attack three":
		#region Attack Three  State
		set_state_sprite(s_attack3, 0.6, 0)
		
		#endregion
		break
}

