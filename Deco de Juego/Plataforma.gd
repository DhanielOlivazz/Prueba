extends Area2D

signal bounce

onready var audio = $AudioStreamPlayer

func _ready():
	connect("body_entered", self, "_on_Area2D_body_entered")
	$AnimationPlayer.connect("animation_finished", self, "_on_AnimationPlayer_animation_finished")
	# Asegúrate de que los sprites estén en el estado correcto al iniciar
	$Idle.visible = true
	$Jump.visible = false


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		emit_signal("bounce", body)
		$Idle.visible = false
		$Jump.visible = true
		$AnimationPlayer.play("jump")
		audio.play()

func _on_AnimationPlayer_animation_finished(anim_name):
	
	if anim_name == "jump":
		$AnimationPlayer.play("jump back")
	elif anim_name == "jump back":
		$Jump.visible = false
		$Idle.visible = true
		$AnimationPlayer.play("idle")
	elif anim_name == "idle":
		$Idle.visible = true
