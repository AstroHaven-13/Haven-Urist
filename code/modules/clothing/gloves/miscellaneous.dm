/obj/item/clothing/gloves/captain
	desc = "Regal blue gloves, with a nice gold trim. Swanky."
	name = "captain's gloves"
	icon_state = "captain"
	item_state = "egloves"
	armor = list(melee = 15, bullet = 0, laser = 5,energy = 0, bomb = 0, bio = 10, rad = 0)

/obj/item/clothing/gloves/cyborg
	desc = "Beep boop borp!"
	name = "cyborg gloves"
	icon_state = "black"
	item_state = "r_hands"
	siemens_coefficient = 1.0

/obj/item/clothing/gloves/swat
	desc = "These tactical gloves are somewhat fire and impact-resistant."
	name = "\improper SWAT Gloves"
	icon_state = "black"
	item_state = "swat_gl"
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	force = 5
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)

	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(melee = 20, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 10, rad = 0)

/obj/item/clothing/gloves/combat //Combined effect of SWAT gloves and insulated gloves
	desc = "These tactical gloves are somewhat fire and impact resistant."
	name = "combat gloves"
	icon_state = "work"
	item_state = "wgloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	force = 5
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(melee = 25, bullet = 0, laser = 5,energy = 0, bomb = 5, bio = 10, rad = 0)

/obj/item/clothing/gloves/latex
	name = "latex gloves"
	desc = "Sterile latex gloves."
	icon_state = "latex"
	item_state = "lgloves"
	siemens_coefficient = 1.0 //thin latex gloves, much more conductive than fabric gloves (basically a capacitor for AC)
	permeability_coefficient = 0.01
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 30, rad = 0)

	germ_level = 0

/obj/item/clothing/gloves/botanic_leather
	desc = "These leather work gloves protect against thorns, barbs, prickles, spikes and other harmful objects of floral origin."
	name = "botanist's leather gloves"
	icon_state = "leather"
	item_state = "ggloves"
	permeability_coefficient = 0.05
	siemens_coefficient = 0.50 //thick work gloves
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 10, rad = 0)

/obj/item/clothing/gloves/work
	desc = "These brown tactical gloves are made from a durable synthetic."
	name = "work gloves"
	icon_state = "work"
	item_state = "wgloves"
	siemens_coefficient = 0.50
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 5, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/gloves/tactical
	desc = "These brown tactical gloves are made from a durable synthetic, and have hardened knuckles."
	name = "tactical gloves"
	icon_state = "work"
	item_state = "wgloves"
	force = 5
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	armor = list(melee = 30, bullet = 10, laser = 10, energy = 15, bomb = 20, bio = 0, rad = 0)

/obj/item/clothing/gloves/guards
	desc = "A pair of synthetic gloves and arm pads reinforced with armor plating."
	name = "arm guards"
	icon_state = "guards"
	item_state = "guards"
	body_parts_covered = HANDS|ARMS
	w_class = 3
	siemens_coefficient = 0.7
	permeability_coefficient = 0.03
	armor = list(melee = 40, bullet = 40, laser = 40, energy = 25, bomb = 30, bio = 0, rad = 0)
