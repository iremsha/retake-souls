/// Время анимации = жизнь в отрицательное значение
draw_self()

if alarm[0] > 0
{
	if hp <= 0 hp = 0
	var height = sprite_height
	draw_rectangle_color(x-12, y-height, x-12+(hp/max_hp)*24, y-(height-2), c_white, c_white, c_white, c_white, false)
	draw_sprite(Enemy_Healthbar, 0, x-12, y-height)
}