extends Node

var dict = {}

func _ready():
	var file = File.new()
	file.open("res://data/data.json", file.READ)
	var text = file.get_as_text()
	dict.parse_json(text)
	file.close()
	for prof in dict["teachers"]:
		for eleve in prof["students"]:
			print(eleve + " est l'élève de : " + prof["name"])
		