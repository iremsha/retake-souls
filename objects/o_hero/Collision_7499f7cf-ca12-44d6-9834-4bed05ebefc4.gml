if (room_exists(other.newRoom)){
	room_goto(other.newRoom);
	x = other.newX;
	y = other.newY;
	o_hero.level += 1;
}