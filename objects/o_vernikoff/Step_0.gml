switch(state)
{
	case "Chase":
		#region Chease State
		set_state_sprite(Vernikoff_Walk, 0.6 , 0)
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
			state = "Attack"
		}
		else
		{
			if range_target >= distance_to_player
			move_and_collide(direction_facing * chase_speed, 0)
		}
		#endregion
		break
		
	case "Attack":
		#region Attack State
		var vernikoff_speed = (max_hp - hp)/200
		set_state_sprite(Vernikoff_Attack, 0.6+vernikoff_speed, 0)
		if animation_hit_frame(5)
		{
		audio_play_sound(sound_sword_two, 1000, false)
		var vernikoff_dmg = (max_hp - hp)/20
		create_hitbox(x, y, self, Vernikoff_Attack_damage, 4, 4, 2+vernikoff_dmg, image_xscale)
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
		knockback_state(Vernikoff_Hit, "Chase")
		var vernikoff_chase = 1 + (max_hp - hp)/20
		chase_speed = vernikoff_chase
		#endregion
		break
}