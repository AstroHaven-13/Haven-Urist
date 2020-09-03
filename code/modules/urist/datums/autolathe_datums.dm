//datums for the autolathe

/datum/autolathe/recipe/voiceanalyser
	name = "voice analyser"
	path = /obj/item/device/assembly/voice
	category = "Devices and Components"

/datum/autolathe/recipe/scissors
	name = "scissors"
	path = /obj/item/weapon/scissors
	category = "General"

/obj/item/weapon/clipboard/matter = list("wood" = 30)

/datum/autolathe/recipe/clipboard
	name = "clipboard"
	path = /obj/item/weapon/clipboard
	category = "General"

/datum/autolathe/recipe/rollingpin
	name = "rolling pin"
	path = /obj/item/weapon/material/kitchen/rollingpin
	category = "General"

/obj/item/weapon/pickaxe/hand/matter = list(DEFAULT_WALL_MATERIAL = 1250, "wood" = 500)

/datum/autolathe/recipe/handpickaxe
	name = "hand pickaxe"
	path = /obj/item/weapon/pickaxe/hand
	category = "Tools"

/datum/autolathe/recipe/pickaxe
	name = "pickaxe"
	path = /obj/item/weapon/pickaxe/old
	category = "Tools"

/datum/autolathe/recipe/saw
	name = "hand saw"
	path = /obj/item/weapon/carpentry/saw
	category = "Tools"

/datum/autolathe/recipe/axe
	name = "wood axe"
	path = /obj/item/weapon/carpentry/axe
	category = "Tools"

/datum/autolathe/recipe/woodminihoe
	name = "wood minihoe"
	path = /obj/item/weapon/material/minihoe/wood
	category = "Tools"

/datum/autolathe/recipe/woodhatchet
	name = "wood handled hatchet"
	path = /obj/item/weapon/material/hatchet/wood
	category = "Tools"

/datum/autolathe/recipe/woodcup
	name = "wooden cup"
	path = /obj/item/weapon/reagent_containers/food/drinks/woodcup
	category = "General"

/datum/autolathe/recipe/wooddice
	name = "wooden d6"
	path = /obj/item/weapon/dice/wood
	category = "General"

/datum/autolathe/recipe/woodmop
	name = "wooden mop"
	path = /obj/item/weapon/mop/wood
	category = "Tools"

/datum/autolathe/recipe/woodspade
	name = "wood handled spade"
	path = /obj/item/weapon/shovel/spade/wood
	category = "Tools"

/datum/autolathe/recipe/shovel
	name = "shovel"
	path = /obj/item/weapon/shovel
	category = "Tools"

/datum/autolathe/recipe/cane
	name = "cane"
	path = /obj/item/weapon/cane
	category = "General"

/datum/autolathe/recipe/magazine_38cal_rubber
	name = "ammunition (.38, rubber)"
	path = /obj/item/ammo_magazine/c38/rubber
	category = "Arms and Ammunition"

/datum/autolathe/recipe/canesword
	name = "canesword"
	path = /obj/item/weapon/cane/concealed
	hidden = 1
	category = "Arms and Ammunition"

/datum/autolathe/recipe/magazine_762_stripper
	name = "hunting rifle ammo (7.62mm)"
	path = /obj/item/ammo_magazine/a762mm/stripper
	category = "Arms and Ammunition"

/datum/autolathe/recipe/smithinghammer
	name = "smithing hammer"
	path = /obj/item/weapon/hammer/smithing
	category = "Tools"

//torpedo

/datum/autolathe/recipe/torpedo_casing
	name = "torpedo casing"
	path = /obj/structure/shipammo/torpedo
	category = "Arms and Ammunition"

/datum/design/item/torpedo_guts
	name = "torpedo warhead"
	desc = "A warhead for a torpedo. Shove it in a torpedo casing and you're good to go."
	id = "ship_torpedo_warhead"
	req_tech = list(TECH_MATERIAL = 2, TECH_PHORON = 1, TECH_ENGINEERING = 1, TECH_COMBAT = 2)
	materials = list(DEFAULT_WALL_MATERIAL = 1000, "plastic" = 500, "phoron" = 500) //maybe add uranium
	build_path = /obj/item/shipweapons/torpedo_warhead
	sort_string = "SHPWA"