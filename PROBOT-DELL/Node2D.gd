extends Node2D

var NewDialog= Dialogic.start('Dialogo_inicial')

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(NewDialog)


