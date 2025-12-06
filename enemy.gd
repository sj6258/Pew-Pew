extends Area2D


@export var speed = 2.5
@onready var explosion_boom = preload("res://explosions.tscn")

func _process(_delta):
	position.x -= 2.5


func _on_area_entered(area):
	if area is laser_class:
		var explosion = explosion_boom.instantiate()
		explosion.position = position
		get_parent().add_child(explosion)
		queue_free()
		area.queue_free()
	
