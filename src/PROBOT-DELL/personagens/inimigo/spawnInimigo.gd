extends Node2D


var posicoes_spawn = null

var inimigo1 = preload("res://personagens/inimigo/inimigo.tscn")


func _ready():
	posicoes_spawn = $posicoesSpawn.get_children()
	
	
func spawn_inimigo():
	var index = randi() % posicoes_spawn.size()
	var inimigo = inimigo1.instance()
	inimigo.global_position = posicoes_spawn[index].global_position
	add_child(inimigo)

func _on_timerSpawn_timeout():
	spawn_inimigo()
