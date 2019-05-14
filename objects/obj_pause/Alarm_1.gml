/// @description Pause
audio_pause_all();
//instance_activate_object( ... ); //Activate persistant objects like Cameras & Controllers!

screen_alpha_set = 0.8;


//Reset Button Values * Put this here to reset the button positions so that they tween when you pause *
for( var i = 0; i< bc; i++; ){
	bx[ i ]		= 0;
	by[ i ]		= 0;
	bsca[ i ]	= 1;
	bcol[ i ]	= c_white;
	balpha[ i ]	= 1;
	bspd[ i ]	= 0;
	bxoff[ i ]	= 0;
	byoff[ i ]	= 0;
	byspd[ i ]	= 0;
}
