extends Control

@onready var logo: TextureRect = $Screen/VBoxContainer/logo
@onready var startparticles: GPUParticles2D = $startparticles



func _ready() -> void:
	animate_logo()

func animate_logo() -> void:
	var tween_logo = create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_CUBIC)
	
	logo.modulate = Color.TRANSPARENT
	tween_logo.tween_property(logo,"modulate",Color.WHITE,0.4).from(Color.TRANSPARENT).set_delay(1)
	
	startparticles.emitting = false
	tween_logo.tween_callback(startparticles.restart)


func _process(delta: float) -> void:
	pass


func _on_login_pressed() -> void:
	get_tree().change_scene_to_file("res://menus/mainpage.tscn")
