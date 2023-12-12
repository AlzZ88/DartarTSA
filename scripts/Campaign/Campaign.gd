extends Node2D
class_name Campaign
var campaign_name = ""
var global_difficulty = 0
var characters = []
var prologue = ""
var epilogue = ""
var chapters = []

func _init(_name_campaign, _characters_campaign, _prologue,_epilogue,_chapters):
	campaign_name = _name_campaign
	characters = _characters_campaign
	prologue = _prologue
	epilogue = _epilogue
	chapters = _chapters
