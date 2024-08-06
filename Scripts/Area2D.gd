extends Area2D

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Caido")
		get_tree().reload_current_scene()
	pass



func _on_Area2D3_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Caido")
		get_tree().reload_current_scene()
	pass


func _on_Area2D4_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Caido")
		get_tree().reload_current_scene()
	pass


func _on_Area2D5_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Caido")
		get_tree().reload_current_scene()
	pass
