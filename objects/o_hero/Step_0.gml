switch(state)
{
	case "Move":
		#region Move State
	if keyboard_check(ord("D")) and not place_meeting(x+4, y, o_wall)
	{
		x += 4
		image_speed = 0.5
		image_xscale = 1
		sprite_index = s_run
	}

	if keyboard_check(ord("A")) and not place_meeting(x-4, y, o_wall)
	{
		x -= 4
		image_speed = 0.5
		image_xscale = -1
		sprite_index = s_run
	}

	if not keyboard_check(ord("A")) and not keyboard_check(ord("D"))
	{
		sprite_index = s_Idle
		image_speed = 0.4
	}
	
	if keyboard_check_pressed(ord("W"))
	{
		image_index = 0
		state = "Roll"
	 
	}
	
	if keyboard_check_pressed(vk_space)
	{
		image_index = 0
		state = "Attack"
		
	}
	#endregion
		break
		
	case "Roll":
		#region Roll State
	sprite_index = s_roll
	image_speed = 0.6
	if image_xscale == 1 and not place_meeting(x+6, y, o_wall)
	{
		x += 6
	}
	
	if image_xscale == -1 and not place_meeting(x-6, y, o_wall)
	{
		x -= 6
	}
	#endregion
		break
		
	case "Attack":
			#region Attack State
	sprite_index = s_attack1
	image_speed = 0.6
	#endregion
		break
}

