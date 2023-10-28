extends "res://singletons/progress_data.gd"

const CY_THTRANS_MODID = "Cyance-ThaiTn"

func _ready():
	_cy_thtrans_add_languages()

func _cy_thtrans_add_languages() -> void:
	languages["thai"]   = "th" # Thai
	ModLoaderLog.info("Installed custom language: Thai", CY_THTRANS_MODID)
