extends Node
#retourner Elève de Teacher0: GAUTIER THOMAS (16 ans)
var dict = {}

func _ready():
	var file = File.new()
	file.open("res://data/data.json", file.READ)
	var text = file.get_as_text()
	dict.parse_json(text)
	file.close()
	
	for eleve in dict["students"]:
		for prof in dict["teachers"]:
			if eleve["lastname"] in  prof["students"]:
				print(eleve["lastname"] + " " + eleve["firstname"] + " est l'élève de " + prof["name"] + " et il a " + str(eleve["age"]) + " ans!")
			
		