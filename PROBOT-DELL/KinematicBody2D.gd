extends KinematicBody2D


var velocity = Vector2.ZERO
var move_speed = 280
var gravity = 1200
var jump_force = -320

func _physics_process(delta: float) -> void:
	
	var move_direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	var move_up_down = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	
	velocity.x = move_speed * move_direction
	velocity.y = move_speed * move_up_down
	
	velocity = move_and_slide(velocity)
	
	
