extends Area2D

var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_recepcionista')


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_Area_Recepcionista_body_entered(_body):
	DialogControl= true
	
		
func _on_Area_Recepcionista_body_exited(_body):
	DialogControl= false

func _physics_process(_delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
		
