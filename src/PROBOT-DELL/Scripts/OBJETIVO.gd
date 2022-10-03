extends ColorRect



var vet_objetivos = ["Enter the Building","Talk to Ellen","Go to floor 1","Talk to Marcos","Talk to Pinky on floor 2","Take the Pen Drive","Plug the Pen Drive on the computer in floor 1","Go to floor 3", "Talk to Hawking", "Grab the RAM", "Fix the computer in the second floor"]
	
	
func _physics_process(_delta):
	$Label.text = vet_objetivos[Global.contador]
			
		
