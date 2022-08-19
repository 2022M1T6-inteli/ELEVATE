extends KinematicBody2D


var velocity = Vector2.ZERO
var move_speed = 480
var gravity = 1200
var jump_force = -320

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	var move_direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	
	if Input.is_action_pressed("ui_up"):
		velocity.y = jump_force
	
	velocity.x = move_speed * move_direction
	
	move_and_slide(velocity)
