/obj/item/gun/ballistic/automatic/assaultcarbine
	name = "\"Colt\" Assault Carbine"
	desc = "The Assault Carbine was made by the Colt company prior to the war and distributed mostly among US Airforce bases and to US Army Special Forces units. \
			One may recognize its design from some civilian market models; though sporting a notable difference - a 5mm magazine. Lightweight, fast firing and packs a damn-good punch."
	icon = 'icons/obj/guns/projectile/bozar.dmi'
	icon_state = "assault"
	item_state = "assault"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_MINI
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/rifle_5mm
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.6
	damage_multiplier = 1.1
	penetration_multiplier = 1.2
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_5_ROUND,
		SEMI_AUTO_NODELAY,
		)