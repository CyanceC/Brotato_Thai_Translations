extends Node

const MOD_DIR = "Cyance-ThaiTn/"
const CY_THTRANS_MODID = "Cyance-ThaiTn"

var dir = ""
var ext_dir = ""
var trans_dir = ""


func _init(_modLoader = ModLoader):
	ModLoaderLog.info("Init", CY_THTRANS_MODID)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"

	# Add extensions
	ModLoaderMod.install_script_extension(ext_dir + "singletons/progress_data.gd")

	# Add translations
	ModLoaderMod.add_translation(trans_dir + "translations-v1.0.0.3_cyance.th.translation") # Thai

func _ready()->void:
	var temp
	var thaifont = DynamicFontData.new()

	thaifont.font_path = "res://mods-unpacked/Cyance-ThaiTn/resources/fonts/raw/IBMPlexSansThai-Bold.ttf"

	temp = load("res://resources/fonts/actual/base/font_biggest.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_big_outlined.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_big_title.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_button.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_floating_text.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_menus.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_smallest_text.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_small_button.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_small_text.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_small_title.tres")
	temp.add_fallback(thaifont)
	temp = load("res://resources/fonts/actual/base/font_subtitle.tres")
	temp.add_fallback(thaifont)

	ModLoaderLog.info("Ready", CY_THTRANS_MODID)
