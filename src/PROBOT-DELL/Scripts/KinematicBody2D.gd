extends KinematicBody2D

#declaração de variaveis
var velocity = Vector2.ZERO
var move_speed = 280
var gravity = 1200
var jump_force = -320

#função process delta que está implementando a  mecânica de andar do personagem
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	var move_direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
		
	velocity.x = move_speed * move_direction
		
	velocity = move_and_slide(velocity)
	
	


