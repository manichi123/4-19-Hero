/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var A = keyboard_check(ord("A"));
var D = keyboard_check(ord("D"));
var W = keyboard_check(ord("W"));
var S = keyboard_check(ord("S"));

var hspd = D - A;
var vspd = S - W;


if (hspd != 0 || vspd != 0)
{
    var dir = point_direction(0, 0, hspd, vspd);
    var xadd = lengthdir_x(spd, dir);
    var yadd = lengthdir_y(spd, dir);
	
	
    if (!place_meeting(x + xadd, y, Obj_Solid)) {
		
		switch (hspd) {
			case 1:
				rotate = 1
				sprite_index = Sp_HeroMoveRight
				x = x + xadd;
			break;
			case -1:
				rotate = -1
				sprite_index = Sp_HeroMoveLeft
				x = x + xadd;
			break;
		}
		
	} else {
		while(!place_meeting(x + sign(xadd), y, Obj_Solid)) {
			x = x + sign(xadd)
		}
	}
	
	if (!place_meeting(x, y + yadd, Obj_Solid)) {
		
		switch (vspd) {
			case 1:
				sprite_index = Sp_HeroMoveRight
				y = y + yadd;
			break;
			case -1: 
				sprite_index = Sp_HeroMoveLeft
				y = y + yadd;
			break;
		}
		
	} else {
		while(!place_meeting(x, y + sign(yadd), Obj_Solid)) {
			y = y + sign(yadd)
		}
	}
} else {
	if (rotate = 1) {
		sprite_index = Sp_HeroIdleRight
	} else {
		sprite_index = Sp_HeroIdleLeft
	}
}