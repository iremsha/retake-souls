///Ля, чисто шаманил с числами чтобы убрать баг, в чем дело0
//Второе значение отвечает за точность (3 без промохов)
damage_arrow_souls = o_hero.souls / 20
hitbox = create_hitbox(x, y, self, Hero_Attack_bow_damage, 4, 2, damage_arrow_souls, image_xscale)
instance_destroy()
