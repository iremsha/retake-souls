if not instance_exists(o_hero) exit;
var hp_x = 8
var hp_y = 8
var hp_width = 198
var hp_hight = 6

if instance_exists(o_hero)
{
	draw_hp = lerp(draw_hp, o_hero.hp, 0.2)
	draw_max_hp = o_hero.max_hp
	
}
else
{
	draw_hp = lerp(draw_hp, 0, 0.2)
}

var hp_percent = draw_hp / draw_max_hp
draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent), hp_y + hp_hight, c_white, c_white, c_white, c_white, false)

draw_line_width_color(hp_x - 1, hp_y - 1, hp_x + hp_width, hp_y - 1, 1, c_dkgray, c_dkgray)
draw_line_width_color(hp_x - 1, hp_y + hp_hight, hp_x + hp_width, hp_y + hp_hight, 1, c_dkgray, c_dkgray)
draw_line_width_color(hp_x - 1, hp_y - 1, hp_x - 1, hp_y + hp_hight, 1, c_dkgray, c_dkgray)
draw_line_width_color(hp_x + hp_width, hp_y - 1, hp_x + hp_width, hp_y + hp_hight, 1, c_dkgray, c_dkgray)

if not instance_exists(o_hero) exit
var text = "Level: " + string(o_hero.level)
var text_width = string_width(text)
var text_height = string_height(text)

var start_x = 8
var start_y = 16
var padding_x = 4
var padding_y = 4
draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y + text_height+ padding_x, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false)
draw_text(start_x + padding_x/2, start_y + padding_y, text)


var text = "Souls: " + string(o_hero.souls)
var text_width = string_width(text)
var text_height = string_height(text)

var start_x = (8 * 8) + (padding_x * padding_x)
var start_y = 16
var padding_x = 4
var padding_y = 4
draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y + text_height+ padding_x, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false)
draw_text(start_x + padding_x/2, start_y + padding_y, text)
