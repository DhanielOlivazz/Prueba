extends Area2D

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		print("Caimos")
		get_tree().reload_current_scene()
	pass


func _on_Area2D2_body_entered(body):
	if body.get_name() == "Player":
		print("ganamos")
		get_tree().change_scene("res://Mundo/mundo 4.tscn")
	pass
