extends Button

func _ready():
	var normal_style_box = StyleBoxFlat.new()
	normal_style_box.bg_color = Color(0.55, 0.76, 0.29)  # Vert
	self.add_theme_stylebox_override("normal", normal_style_box)

	var hover_style_box = StyleBoxFlat.new()
	hover_style_box.bg_color = Color(0.47, 0.33, 0.28)  # Marron
	self.add_theme_stylebox_override("hover", hover_style_box)

	var pressed_style_box = StyleBoxFlat.new()
	pressed_style_box.bg_color = Color(0.51, 0.83, 0.98)  # Bleu Clair
	self.add_theme_stylebox_override("pressed", pressed_style_box)

	self.add_theme_color_override("font_color", Color(1, 1, 1))  # Blanc


func _on_pressed():
	var new_scene = load("res://base.tscn")
	if new_scene:
		get_tree().change_scene_to_packed(new_scene)
	else :
		print("Echec du chargement de la scene")

