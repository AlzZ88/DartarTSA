class_name Mission
var title = ""
var description = ""
var goals = []
var difficulty = 0
var rewards = []
var scenario = null

func _init(title_mission, desc_mission, difficulty_mission, rewards_mission,scenario_mission):
	title = title_mission
	description = desc_mission
	difficulty = difficulty_mission
	rewards = rewards_mission
	scenario = scenario_mission
