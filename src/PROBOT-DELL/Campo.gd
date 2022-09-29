extends Node2D

signal gol_esquerda 
signal gol_direita 



func _ready():
	pass 



func _on_GolEsquerda_body_entered(body):
	 emit_signal("gol_esquerda")
	 print("ajaoifjioa")

func _on_GolDireita_body_entered(body):
	emit_signal("gol_direita")
	print("asdiaosfjasiofj")
