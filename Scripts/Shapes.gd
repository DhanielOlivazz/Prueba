extends Node



func _on_A1_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos quemado")
		get_tree().reload_current_scene()
		pass 
	


func _on_A2_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos quemado")
		get_tree().reload_current_scene()
	pass 


func _on_A3_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos quemado")
		get_tree().reload_current_scene()
	pass 


func _on_A4_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos quemado")
		get_tree().reload_current_scene()
	pass 


func _on_Bandera1_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Nivel 6.tscn")
	pass


func _on_Bandera2_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Mundo 7.tscn")
	pass


func _on_Bandera3_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Mundo 8.tscn")
	pass


func _on_A1M8_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos caido")
		get_tree().reload_current_scene()
	pass 


func _on_Bandera4_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Mundo 9.tscn")
		pass
	


func _on_m7s2_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos caido")
		get_tree().reload_current_scene()
	pass 


func _on_Bandera5_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/mundo 2.tscn")
		pass


func _on_Bandera6_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Mundo 3.tscn")
		pass


func _on_Bandera7_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/mundo 4.tscn")
		pass


func _on_Bandera8_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Mundo 5.tscn")
		pass


func _on_Bandera9_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Nivel 6.tscn")
		pass


func _on_Bandera10_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos Ganado")
		get_tree().change_scene("res://Mundo/Mundo 10.tscn")
		pass


func _on_A1M9_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos caido")
		get_tree().reload_current_scene()
	pass 


func _on_Plata_body_entered(body):
	if body.get_name() == "Player":
		print("Nos Hemos Estrellado")
		get_tree().change_scene("res://Mundo/Mundo 10.tscn")
		pass

