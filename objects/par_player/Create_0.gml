// Inputs
inputs = {
	up : vk_up,
	left : vk_left,
	down : vk_down,
	right : vk_right
}
h_up = 0;
h_left = 0;
h_down = 0;
h_right = 0;
// Image
spr_dir = 1;
idle_spr = [];
move_spr = [];
// Movement
spd = 0;
hspd = 0;
vspd = 0;

// State Machine
enum PLAYER_STATE{
	IDLE,
	MOVE
}
state = PLAYER_STATE.IDLE;
state_array[PLAYER_STATE.IDLE] = player_state_idle;
state_array[PLAYER_STATE.MOVE] = player_state_move;

// Checking sprite direction
set_keys = function(){
		h_up = keyboard_check(inputs.up);
		h_left = keyboard_check(inputs.left);
		h_down = keyboard_check(inputs.down);
		h_right = keyboard_check(inputs.right);
}
dir = function(){
	if(h_right){
		spr_dir = 0;	
	}
	if(h_up){
		spr_dir = 1;
	}
	if(h_left){
		spr_dir =  2;	
	}
	if(h_down){
		spr_dir = 3;	
	}
}