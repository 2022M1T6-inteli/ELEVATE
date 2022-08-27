extends KinematicBody2D

#declaração de variáveis
var velocity = Vector2.ZERO
var move_speed = 280
var gravity = 1200
var jump_force = -320
var isMoving: bool = false
onready var animationPlayer= $Animacao_Andar

# funçao que controla as mecanicas de movimento do personagem
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	var move_direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
		
	velocity.x = move_speed * move_direction
	print(velocity.x)
	
	# laço de controle que verifica a movimentaçao para associonar a animaçao
	if velocity.x > 0:
		$Animacao_Andar.play("Direita")
		isMoving= false
		
	elif velocity.x < 0:
		$Animacao_Andar.play("esquerda")
		
		isMoving=true
	elif velocity.x == 0 && isMoving:
		$Animacao_Andar.play("Animação_Parada_Esquerda")
		
	elif velocity.x == 0 && isMoving==false:
		$Animacao_Andar.play("Animacao_Parada")
			
	velocity = move_and_slide(velocity)
