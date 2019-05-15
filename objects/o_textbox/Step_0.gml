if keyboard_check_pressed(ord("E")){
	
	//Skip text
	if char_count < string_length(text[page]) {
		
		char_count = string_length(text[page])
	}
	
	else if page + 1 < array_length_1d(text) {
		
		page += 1
		char_count = 0
	}
	else instance_destroy()
}
else {
	creator.alarm[1] = 2
}