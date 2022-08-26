extends KinematicBody2D

var velocity = Vector2.ZERO
var move_speed = 280
var gravity = 1200
var jump_force = -320
var isMoving: bool = false

onready var animationPlayer= $Animacao_Andar

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	var move_direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
		
	velocity.x = move_speed * move_direction
	print(velocity.x)
	if velocity.x > 0:
		$Animacao_Andar.play("Direita")
		isMoving= false
		print("aqui1111!!!")
	elif velocity.x < 0:
		$Animacao_Andar.play("esquerda")
		print("aqui2222!!!")
		isMoving=true
	elif velocity.x == 0 && isMoving:
		#$Animacao_Andar.stop()
		$Animacao_Andar.play("Animação_Parada_Esquerda")
		print("aqui3333!!!")
	elif velocity.x == 0 && isMoving==false:
		$Animacao_Andar.play("Animacao_Parada")
		print("aqui4444!!!")
	


	velocity = move_and_slide(velocity)
