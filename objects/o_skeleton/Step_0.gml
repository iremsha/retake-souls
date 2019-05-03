switch(state)
{
	case "Chase":
		#region Chease State
		set_state_sprite(Skeleton_Walk, 0.8 , 0)
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
			move_and_collide(direction_facing * chase_speed, 0)
		}
		#endregion
		break
		
	case "Attack":
		#region Attack State
		set_state_sprite(Skeleton_Attack, 0.6, 0)
		
		if animation_hit_frame(7)
		{
		create_hitbox(x, y, self, Skeleton_Attack_damage, 4, 4, 1, image_xscale)
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
		knockback_state(Skeleton_Hit, "Chase")
		
		#endregion
		break
}