extends Node2D

var NewDialog= Dialogic.start('Dialogo_inicial')

# funçao de dialogo
func _ready():
	add_child(NewDialog)


