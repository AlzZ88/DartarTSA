class_name Mission
var title = ""
var description = ""
var goals = []
var difficulty = 0
var rewards = []
var scenario = null

func add_title(new_title : String) -> Mission:
	title = new_title
	return self

func add_description(new_description : String) -> Mission:
	description = new_description
	return self

func add_goals(new_goals : Array) -> Mission:
	goals = new_goals
	return self

func add_difficulty(new_difficulty : int) -> Mission:
	difficulty = new_difficulty
	return self

func add_rewards(new_rewards : Array) -> Mission:
	rewards = new_rewards
	return self

func add_scenario(scenario_name,biome,main) -> Mission:
	var scenario_instance =preload("res://scenes/scenario/scenario.tscn").instantiate()
	scenario_instance.position=Vector2(0,0)
	scenario_instance._init_(scenario_name,biome)
	scenario=scenario_instance
	main.add_child(scenario_instance)
	return self
	
