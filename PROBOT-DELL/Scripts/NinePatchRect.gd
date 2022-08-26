extends NinePatchRect

onready var text= $RichTextLabel

var MessageQueue: Array = [
	"Olá, tudo bem",
	"Eu irei te ensinar o modelo de produtos"
	
]


# Called when the node enters the scene tree for the first time.
func _ready():
	showMessage()
	
func showMessage():
	var msg: String= MessageQueue.pop_front()
	text.bbcode_text= msg 
	


