extends KinematicBody

# uses code from Jayanam
# https://www.youtube.com/watch?v=kc-zJnRvPUY

var movedir = Vector3(0,0,0)
var velocity = Vector3()
var gravity = -35
var camera
var character

const SPEED = 12
const ACCELERATION = 5
const DECELERATION = 10
const JUMP_HEIGHT = 10

var is_moving = false

var can_jump = false

func _ready():
	character = get_node(".")

func _physics_process(delta):
	camera = get_node("target/Camera").get_global_transform()
	get_node("target/Camera").player = self
	
	loop_controls()
	
	movedir.y = 0
	movedir = movedir.normalized()
	
	velocity.y += delta * gravity
	
	# horizontal velocity
	var hv = velocity
	hv.y = 0
	
	var new_pos = movedir * SPEED
	var accel = DECELERATION
	
	if movedir.dot(hv) > 0:
		accel = ACCELERATION
	
	hv = hv.linear_interpolate(new_pos, accel * delta)
	
	velocity.x = hv.x
	velocity.z = hv.z
	
	velocity = move_and_slide(velocity, Vector3(0,1,0))
	
	if is_moving && !Input.is_key_pressed(KEY_SHIFT):
		var angle = atan2(hv.x, hv.z)
		var char_rot = get_rotation()
		char_rot.y = angle
		set_rotation(char_rot)
	
	# jump
	if is_on_floor():
		can_jump = true
	else:
		if can_jump && !$Ground.is_colliding() && is_moving:
			velocity.y = JUMP_HEIGHT
			can_jump = false




func loop_controls():
	movedir = Vector3(0,0,0)
	
	is_moving = false
	
	if is_on_wall():
		return
	
	if(Input.is_action_pressed("up")):
		movedir += -camera.basis[2]
		is_moving = true
	if(Input.is_action_pressed("down")):
		movedir += camera.basis[2]
		is_moving = true
	if(Input.is_action_pressed("left")):
		movedir += -camera.basis[0]
		is_moving = true
	if(Input.is_action_pressed("right")):
		movedir += camera.basis[0]
		is_moving = true
