extends Area2D

# Variables para el movimiento
var direction = Vector2(1, 0)
var speed = 80
var left_limit = 6380
var right_limit = 6550

# Referencia al jugador
#onready var player = get_parent().get_node("Player")
onready var animation_player = $AnimationPlayer
onready var Spritee = $Sprite

func _ready():
	set_process(true)
	connect("body_entered", self, "_on_NPC_body_entered")

func _process(delta):
	position.x += direction.x * speed * delta
	if position.x > right_limit:
		direction = Vector2(-1, 0)
		Spritee.flip_h = false
	elif position.x < left_limit:
		direction = Vector2(1, 0)
		Spritee.flip_h = true

func _on_NPC_body_entered(body):
	if body.name == "Player":
		print("Nos han envestida carajo")
		get_tree().reload_current_scene()  
