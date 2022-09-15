extends ColorRect



var objetivo2 = str("Talk to John")
var objetivo3 = str("Go to floor 1")
var objetivo4 = str("Talk to Marcos")
var objetivo5 = str("Tal")



	
	
func _physics_process(delta):
	if Global.contador == 1:
		$Label.text = objetivo2
	elif Global.contador == 2:
		$Label.text = objetivo3
	elif Global.contador == 3:
		$Label.text = objetivo4
	elif Global.contador == 4:
		$Label.text = objetivo5
			
		
