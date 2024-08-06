extends Area2D
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		print("Has ganado")
		get_tree().change_scene("res://Mundo/mundo 2.tscn")
		pass 
	


func _on_Areafall_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos caido")
		get_tree().reload_current_scene()
		pass 
	


func _on_coll_1_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos caido")
		get_tree().reload_current_scene()
		pass 
	


func _on_coll_2_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos caido")
		get_tree().reload_current_scene()
		pass 


func _on_sell_3_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos caido")
		get_tree().reload_current_scene()
		pass 



func _on_sell_4_body_entered(body):
	if body.get_name() == "Player":
		print("Has ganado")
		get_tree().change_scene("res://Mundo/Mundo 5.tscn")
		pass 


func _on_coll_3_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos caido")
		get_tree().reload_current_scene()
		pass 

