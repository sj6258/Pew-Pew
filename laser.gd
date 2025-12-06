extends Area2D
class_name laser_class

@export var speed = 25

func _process(_delta):
	position.x += speed
