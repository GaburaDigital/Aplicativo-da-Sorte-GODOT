extends Control


# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#pass


func _on_texture_button_moeda_pressed():
	get_tree().change_scene_to_file("res://CENAS/tela_moedas.tscn")
	pass # Replace with function body.


func _on_texture_button_jokenpo_pressed():
	get_tree().change_scene_to_file("res://CENAS/tela_jokenpo.tscn")
	pass # Replace with function body.


func _on_texture_button_dado_pressed():
	get_tree().change_scene_to_file("res://CENAS/tela_dado.tscn")
	pass # Replace with function body.
