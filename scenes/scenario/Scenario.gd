extends Node2D
class_name Scenario
var scenario_name = ""
var biome=""

var camps = []

func _init_(name_scenario,_biome):
	scenario_name = name_scenario
	biome=_biome
	spawn_room(Vector2(-48*16,-53*16),biome,"A")
	spawn_room(Vector2(16*16,-53*16),biome,"I")
	spawn_room(Vector2(48*16,-53*16),biome,"K")
	spawn_room(Vector2(-48*16,-21*16),biome,"B")
	spawn_room(Vector2(-48*16,11*16),biome,"C")
	spawn_room(Vector2(-16*16,-21*16),biome,"H")
	spawn_room(Vector2(16*16,-21*16),biome,"J")
	spawn_room(Vector2(-16*16,11*16),biome,"G")
	spawn_room(Vector2(-48*16,43*16),biome,"D")
	spawn_room(Vector2(16*16,43*16),biome,"E")
	spawn_room(Vector2(48*16,43*16),biome,"F")
	
	
	
func spawn_room(Room_cord: Vector2,biome,zone):

	var Zones=["a","b","c"]
	var rng = RandomNumberGenerator.new()
	var variation=Zones[rng.randi_range(0,Zones.size()-1)]
	var path="res://scenes/scenario/"+biome+"/"+zone+"/"+zone+"_"+variation+".tscn"
	print(path)
	var Room = load(path)
	#print("loading "+biome+" "+zone+" Zone "+variation+" variation.")
	var Room_instance=Room.instantiate()
	Room_instance.position=Room_cord
	add_child(Room_instance)
