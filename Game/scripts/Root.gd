extends Spatial


func _ready():
	if not get_node("remy/AnimationPlayer").is_playing():
		get_node("remy/AnimationPlayer").play("Run Backward")

	pass


func _process(delta):
	var direction = Vector2(0, 0)

	############### Input #############
	#    If ():
	#        direction += Vector2(0, -1)
	#        anim.play("walk_back")
	#        anim.seek(0, true)
	if Input.is_action_pressed("ui_up"):
		direction += Vector2(0, -1)
		get_node("remy/AnimationPlayer").play("Walking")
		
	if Input.is_action_pressed("ui_down"):
		direction += Vector2(0, 1)
		get_node("remy/AnimationPlayer").play("Run Backward")
	pass


func _on_Button_button_down():
	var direction = Vector2(0, 0)
	direction += Vector2(0, -1)
	get_node("remy/AnimationPlayer").play("Walking")
	pass # Replace with function body.
