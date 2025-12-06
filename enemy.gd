extends Area2D


@export var speed = 2.5


func _process(_delta):
	position.x -= 2.5


func _on_area_entered(area):
	if area is laser_class:
		queue_free()
	
