extends Area2D

var velocidade = 150
var vida = 1

func _process(delta):
	global_position.y += velocidade * delta

func levar_dano(dano):
	vida -= dano
	if vida <= 0:
		queue_free()
