/obj/item/gun/energy/gun
	name = "\"AEP-7\" energy pistol"
	desc = "The \"A"
	icon = 'icons/obj/guns/energy/egun.dmi'
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	item_charge_meter = TRUE
	can_dual = TRUE
	fire_sound = 'sound/weapons/Taser.ogg'
	charge_cost = 100
	matter = list(MATERIAL_PLASTEEL = 13, MATERIAL_PLASTIC = 6, MATERIAL_GOLD = 3)
	price_tag = 350

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)

	init_firemodes = list(
		LETHAL,
		WEAPON_CHARGE,
		)

/obj/item/gun/energy/gun/mounted
	name = "mounted energy gun"
	self_recharge = 1
	use_external_power = 1
	safety = FALSE
	restrict_safety = TRUE

/obj/item/gun/energy/ntpistol
	name = "\"Wattz-1000\" energy pistol"
	desc = "The \"Wattz-1000\" brand laser pistol, one of the very few civilian market laser weapons prior to the Great War."
	icon = 'icons/obj/guns/energy/ntpistol.dmi'
	icon_state = "ntpistol"
	item_state = "ntpistol"
	item_charge_meter = FALSE
	fire_sound = 'sound/weapons/Laser.ogg'
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 1)
	w_class = ITEM_SIZE_SMALL
	projectile_type = /obj/item/projectile/beam
	charge_cost = 50
	can_dual = TRUE
	matter = list(MATERIAL_PLASTEEL = 4, MATERIAL_WOOD = 4, MATERIAL_SILVER = 2)
	price_tag = 150
	init_firemodes = list(
		LETHAL,
 		WEAPON_CHARGE
	)
	twohanded = FALSE
	suitable_cell = /obj/item/cell/small
	cell_type = /obj/item/cell/small