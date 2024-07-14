extends Sprite2D
var deplacement = 2

func _process(delta):
	get_node(".").position.x += deplacement
