extends Area2D


var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_Marcos')
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_NPC_Marcos_body_entered(body):
	DialogControl= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[4]
	InfoPopup.set_global_position(Vector2(525, 375))


func _on_NPC_Marcos_body_exited(body):
	DialogControl= false
	InfoPopup.visible= false

func _physics_process(delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
