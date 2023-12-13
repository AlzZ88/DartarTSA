extends Node2D
class_name Scenario

var A_zones=[
	preload("res://scenes/scenario/zone/Zone.tscn")
]


var scenario_name = ""

var camps = []
func _ready():
	instanciarHabitacion(Vector2(0,0))


func _init(name_scenario):
	scenario_name = name_scenario
	
func instanciarHabitacion(coordenadas: Vector2):
	print(coordenadas)
	var habitacion = preload("res://scenes/scenario/zone/Zone.tscn")
	var instance=habitacion.instantiate()
	add_child(instance)
