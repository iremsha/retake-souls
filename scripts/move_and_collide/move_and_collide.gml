var xspeed = argument0
var yspeed = argument1

var ygravity = 8
var value_lend = 2.5


if not place_meeting(x+xspeed, y, o_wallform) 
{
	x+=xspeed
}

if not place_meeting(x, y+yspeed, o_wallform)
{
	y+=yspeed
	
	if not place_meeting(x, y+value_lend, o_lendform)
	{
		y+=ygravity
	}
	
}
	

