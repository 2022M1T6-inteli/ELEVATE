extends KinematicBody2D

signal atualizar 




export var velocidade_movimento = 300
var direcao = Vector2()




func _process(delta):
	emit_signal("atualizar")

func _physics_process(delta):
	if direcao.length() > 0:
		direcao = direcao.normalized() * velocidade_movimento
		move_and_collide(direcao * delta)
