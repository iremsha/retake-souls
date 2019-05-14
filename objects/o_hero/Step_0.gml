//Приличное ли условие на комбо?

switch(state)
{
	case "Move":
		#region Move State
	combo = 0
	if keyboard_check(ord("D"))
	{
		move_and_collide(run_speed, 0)
		image_speed = 0.5
		image_xscale = 1
		if jump == true sprite_index = Hero_Roll
		else sprite_index = Hero_Run
	}

	if keyboard_check(ord("A"))
	{
		move_and_collide(-run_speed, 0)
		image_speed = 0.5
		image_xscale = -1
		if jump == true sprite_index = Hero_Roll
		else sprite_index = Hero_Run
	}

	if not keyboard_check(ord("A")) and not keyboard_check(ord("D"))
	{
		set_state_sprite(Hero_Idle_with_sword, 0.4, 0)
		move_and_collide(0, 0)
	}
	
	if keyboard_check_pressed(ord("W"))
	{
		image_index = 0
		state = "Jump"
	 
	}
	
	if keyboard_check_pressed(ord("S"))
	{
		image_index = 0
		state = "Roll"
	 
	}
	
	if keyboard_check_pressed(vk_space)
	{
		image_index = 0
		state = "Attack one"
		
	}
	
	if keyboard_check_pressed(ord("Q"))
	{
		image_index = 0
		state = "Bow"
		
	}
	#endregion
		break
		
	case "Roll":
		#region Roll State
	set_state_sprite(Hero_Roll, 0.6, 0)
	if image_xscale == 1
	{
		move_and_collide(roll_speed, 0)
	}
	
	if image_xscale == -1 
	{
		move_and_collide(-roll_speed, 0)
	}
	
	if animation_end()
	{
		state = "Move"
		
	}
	#endregion
		break
	case "Jump":
		#region Jump State
		move_and_collide(0, -10)
		set_state_sprite(Hero_Jump, 0.7, 0)
		if animation_end()
		{
		state = "Fall"
		
		}
		/// Преписать прыжок, падение и каст!
		if keyboard_check(ord("D"))
	{
		move_and_collide(run_speed, -9)
		image_speed = 0.7
		image_xscale = 1
		
	}

	if keyboard_check(ord("A"))
	{
		move_and_collide(-run_speed, -9)
		image_speed = 0.7
		image_xscale = -1
		
	}
		#endregion
		break
		
	case "Fall":
		#region Fall State
		move_and_collide(0, -2)
		set_state_sprite(Hero_Fall, 1, 0)
		if animation_end() or place_meeting(x, y+3, o_wallform) or place_meeting(x, y+2.5, o_lendform)
		{
		state = "Move"
		
		}
		
		if keyboard_check(ord("D"))
	{
		move_and_collide(run_speed, -5)
		image_speed = 0.5
		image_xscale = 1
		
	}

	if keyboard_check(ord("A"))
	{
		move_and_collide(-run_speed, -5)
		image_speed = 0.5
		image_xscale = -1
		
	}
		#endregion
		break
		
	case "Attack one":
		#region Attack One State
	set_state_sprite(Hero_Attack_one, 0.5, 0)
	
	if animation_hit_frame(3)
	{
		audio_play_sound(sound_sword_one, 1000, false)
		create_hitbox(x, y, self, Hero_Attack_one_damage, 3, 4, 1, image_xscale)
	}
	
	if keyboard_check_pressed(vk_space) and animation_hit_frame_range(4, 6) and combo > 1
	{
		
		state = "Attack two"
		
	}
	
	if animation_end()
	{
		state = "Move"
		
	}
	#endregion
		break
		
	case "Attack two":
		#region Attack Two  State
	set_state_sprite(Hero_Attack_two, 0.5, 0)
		 
	if animation_hit_frame(2)
	{
		audio_play_sound(sound_sword_two, 1000, false)
		create_hitbox(x, y, self, Hero_Attack_two_damage, 1, 4, 2, image_xscale)
	}
	
	if keyboard_check_pressed(vk_space) and animation_hit_frame_range(3, 5) and combo > 2
	{
		
		state = "Attack three"
		
	}
	
	if animation_end()
	{
		state = "Move"
		
	}
		#endregion
		break
		
	case "Attack three":
		#region Attack Three  State
		set_state_sprite(Hero_Attack_three, 0.6, 0)
		
		if animation_hit_frame(3)
		{
			audio_play_sound(sound_sword_one, 1000, false)
			create_hitbox(x, y, self, Hero_Attack_three_damage, 8, 4, 3, image_xscale)
		}
		
		if keyboard_check_pressed(vk_space) and animation_hit_frame_range(3, 5) and combo > 3
		{
			state = "Cast"
			
		}
		
		if animation_end()
		{
			state = "Move"
			
		}
		
		#endregion
		break
		
	case "Cast":
		#region Cast State
		set_state_sprite(Hero_Attack_cast, 0.6, 0)
		
		if animation_hit_frame(5)
		{
			audio_play_sound(sound_sword_one, 1000, false)
			create_fire_ball(x+20*image_xscale,y-5, image_xscale)
		}
		
		if animation_end()
		{
			state = "Move"
			
		}
		
		#endregion
		break
		
	case "Bow":
		#region Bow State
		set_state_sprite(Hero_Bow, 0.8, 0)
		
		if animation_hit_frame(8)
		{
			audio_play_sound(sound_sword_one, 1000, false)
			create_arrow(x+20*image_xscale,y-15, image_xscale)
		}
		
		if animation_end()
		{
			state = "Move"
			
		}
		
		#endregion
		break
	case "Knockback":
		#region Knockback State
		knockback_state(Hero_Hit, "Move")
		
		#endregion
		break
}
