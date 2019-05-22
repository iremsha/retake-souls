switch(state)
{
	case "Chase":
		#region Chease State
		set_state_sprite(Ninja_Walk, 0.9 , 0)
		if not instance_exists(o_hero) break;
		
		image_xscale = sign(o_hero.x - x)
		if image_xscale == 0
		{
			image_xscale = 1
		}
		
		var direction_facing = image_xscale
		var distance_to_player = point_distance(x, y, o_hero.x, o_hero.y)
		if distance_to_player <= attack_range
		{
			state = "Attack one"
		}
		else
		{
			if range_target >= distance_to_player
			move_and_collide(direction_facing * chase_speed, 0)
		}
		#endregion
		break
		
	case "Attack one":
		#region Attack One State
		set_state_sprite(Ninja_Attack_one, 1, 0)
		
		if animation_hit_frame(4)
		{
		audio_play_sound(sound_sword_two, 1000, false)
		create_hitbox(x, y, self, Ninja_Attack_damage_one, 1.5, 4, 2, image_xscale)
		}
		
		if animation_end()
		{
			state = "Attack two"
			image_index = 0
		}
		#endregion
		break
	
	case "Attack two":
		#region Attack Two State
		set_state_sprite(Ninja_Attack_two, 1.5, 0)
		
		if animation_hit_frame(14)
		{
		audio_play_sound(sound_sword_two, 1000, false)
		create_hitbox(x, y, self, Ninja_Attack_damage_two, 8, 4, 2, image_xscale)
		}
		
		if animation_end()
		{
			state = "Chase"
			image_index = 0
		}
		#endregion
		break
		
	case "Knockback":
		#region Knockback State
		knockback_state(Ninja_Hit, "Chase")
		
		#endregion
		break
}