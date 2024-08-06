extends Area2D

# Variables para el movimiento
var direction = Vector2(1, 0)
var speed = 50
var left_limit = 950
var right_limit = 1100

# Referencia al jugador
onready var player = get_parent().get_node("Player")
onready var animation_player = $AnimationPlayer
onready var Spritee = $Sprite
onready var Spritee2 = $Sprite2

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
		if body.is_on_top_of(self):
			Spritee2.visible = true
			animation_player.play("dead")
			yield(animation_player, "animation_finished")
			queue_free()
		else:
			body.die()
