extends Spatial

func _ready():
	var anim = get_node("AnimationPlayer").get_animation("T-Pose")
	anim.set_loop(true)
	get_node("AnimationPlayer").play("T-Pose")

	pass
	
func _physics_process(delta):
	loop_controls()

func loop_controls():
	if(Input.is_action_pressed("up")):
		get_node("AnimationPlayer").play("Walking")
	if(Input.is_action_pressed("right")):
		get_node("AnimationPlayer").play("Walking")
	if(Input.is_action_pressed("left")):
		get_node("AnimationPlayer").play("Walking")
	if(Input.is_action_pressed("down")):
		get_node("AnimationPlayer").play("Run Backward")
