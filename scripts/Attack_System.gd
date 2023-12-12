extends Node
class_name Attack_System
@export var base_damage:int=10
@export var critical:float=0.1

func _init(_base_damage):
	base_damage=_base_damage
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func attack(target: Entity):
	pass
