extends Area2D

func _on_Area2D2_body_entered(body):
	if body.get_name() == "Player":
		print("Has ganado")
		get_tree().change_scene("res://Mundo/Mundo 3.tscn")
		pass 
