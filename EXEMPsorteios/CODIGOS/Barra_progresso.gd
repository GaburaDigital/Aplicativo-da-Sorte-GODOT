extends Control


var completo = false
var lancar = false

func lancar_progresso():
	$ProgressBar.value = 0
	completo = false
	lancar = true
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if lancar:
		if $ProgressBar.value <= 99:
			$ProgressBar.value += 1
			#print("incrementando")

		else:
			lancar = false
			completo = true
			#print("fim")
	
	pass
