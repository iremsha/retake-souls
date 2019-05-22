draw_sprite(Dilog_Textbox_one, 0, x_text_box, y_text_box)

if char_count < string_length(text[page]) char_count +=  0.8
	
text_part = string_copy(text[page], 1, char_count)

draw_set_font(f_main)
//Draw Name
draw_set_color(c_yellow)
draw_set_halign(fa_center)
draw_text(x_text_box+(box_widht/2)+ x_buffer, y_text_box + y_buffer, name)

//Draw Text

draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text_ext(x_text_box+ x_buffer,y_text_box+string_heingh + y_buffer, text_part, string_heingh, box_widht)
