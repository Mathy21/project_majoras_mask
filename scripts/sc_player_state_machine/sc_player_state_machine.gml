function player_state_idle(){
	animation_start(idle_spr[spr_dir]);
	if(h_up || h_left || h_down || h_right){
		state = PLAYER_STATE.MOVE;	
	}
}

function player_state_move(){
	animation_start(move_spr[spr_dir]);
	if(h_up || h_left || h_down || h_right){
		var _dir = point_direction(0,0,(h_right-h_left),(h_down-h_up));
		hspd = lengthdir_x(spd,_dir);
		vspd = lengthdir_y(spd,_dir);
	}
		else{
			hspd = 0;
			vspd = 0;
		}
		
		if(hspd == 0 && vspd == 0){
			state = PLAYER_STATE.IDLE;	
		}
}