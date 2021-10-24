/obj/item/gun/ballistic/automatic/service
	name = "Service Rifle"
	desc = "The Service Rifle is a staple rifle of the NCR and West Coaster's alike. Reliable, cheap, affordable and sporting a stock and handguard made of wood furnishing. \
			Despite its post-war history as a reliable rifle it seems its origins have been lost to time. What can be certain is this has become a new American classic rifle. \
			A downside, however, is upon inspection this rifle appears to be unable to take magazines exceeding 20 rounds. Acursed gun manufacturers.."
	icon = 'icons/obj/guns/projectile/servicerifle.dmi'
	icon_state = "service"
	item_state = "service"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_RIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/rifle/short
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 400
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.8
	damage_multiplier = 1
	penetration_multiplier = 1.2
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/ballistic/automatic/service/maxson
	name = "\"Maxson\" Rifle"
	desc = "With the Brotherhood isignia built into this guns handguard it's not hard to guess who made this strange amalgimation of old salvaged and new precision machine parts. \
			The gun is hard to describe. 'Generic', apart from his unique handguard and polymer would be the easiest way to describe it. \
			It appears to have copied parts of both the Assault Carbine and Service Rifle. Inlcuding the taking only 20 rounds part.. but the elders argue it's 'a feature'.."
	icon = 'icons/obj/guns/projectile/servicerifle.dmi'
	icon_state = "service"
	item_state = "service"
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	recoil_buildup = 1.6
	penetration_multiplier = 1.0