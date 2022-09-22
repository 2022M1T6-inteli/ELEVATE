extends Area2D

var velocidade = 300

var input_vector = Vector2.ZERO

var vida = 3
func _process(delta):
	input_vector.x = Input.get_action_strength("mover_direita") - Input.get_action_strength("mover_esquerda")
	global_position += input_vector * velocidade * delta
	
	
func levar_dano(dano):
	pass
