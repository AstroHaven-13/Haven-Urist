/obj/item/modular_computer/console/preset/nervacommand/install_default_hardware()
	..()
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)
	card_slot = new/obj/item/weapon/computer_hardware/card_slot(src)

/obj/item/modular_computer/console/preset/nervacommand/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/card_mod())
	hard_drive.store_file(new/datum/computer_file/program/comm())
	hard_drive.store_file(new/datum/computer_file/program/contract_database())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/email_client())
	hard_drive.store_file(new/datum/computer_file/program/records())
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	hard_drive.store_file(new/datum/computer_file/program/docking())

/obj/item/modular_computer/console/preset/nervasci/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/nttransfer())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/email_client())
	hard_drive.store_file(new/datum/computer_file/program/supply())
	hard_drive.store_file(new/datum/computer_file/program/records())
	hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	hard_drive.store_file(new/datum/computer_file/program/contract_database())

/obj/item/modular_computer/console/preset/nervasci/install_default_hardware()
	..()
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)

/obj/item/modular_computer/console/preset/nervasupply/install_default_hardware()
	..()
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)

/obj/item/modular_computer/console/preset/nervasupply/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/contract_database())
	hard_drive.store_file(new/datum/computer_file/program/supply())
	set_autorun("supply")

/obj/machinery/computer/combatcomputer/nerva //different def just in case we have multiple ships that do combat. although, i think i might keep the cargo ship noncombat, fluff it as it being too small, slips right by the enemies. i dunno
	name = "ICS Nerva Combat Computer"
	shipid = "nerva"
