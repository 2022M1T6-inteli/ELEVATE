extends ColorRect



var objetivo2 = str("Talk to Ellen")
var objetivo3 = str("Go to floor 1")
var objetivo4 = str("Talk to Marcos")
var objetivo5 = str("Talk to Pinky on floor 2")
var objetivo6 = str("Take the Pen Drive")
var objetivo7 = str("Plug the Pen Drive on the computer in floor 1")
var objetivo8 = str("Go to floor 3")


	
	
func _physics_process(delta):
	if Global.contador == 1:
		$Label.text = objetivo2
	elif Global.contador == 2:
		$Label.text = objetivo3
	elif Global.contador == 3:
		$Label.text = objetivo4
	elif Global.contador == 4:
		$Label.text = objetivo5
	elif Global.contador == 5:
		$Label.text = objetivo6
	elif Global.contador == 6:
		$Label.text = objetivo7
	elif Global.contador == 7:
		$Label.text = objetivo8
		
			
		
