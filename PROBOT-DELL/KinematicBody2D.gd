extends KinematicBody2D

var moviment = Vector2()
const speed = 170



func movimentPlayer():
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	
	if left:
		moviment.x = - speed 
	elif right:
		moviment.x = speed
	else:
		moviment.x = 0
	moviment = move_and_slide(moviment)
	
func _physics_process(delta):
	movimentPlayer()
