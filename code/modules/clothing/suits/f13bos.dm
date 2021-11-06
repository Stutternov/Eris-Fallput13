/* Fallout 13 Brotherhood of Steel armors.

These are sorted by type, then rank.

Standard Knight-line armors and field scribe robes are medium, scout jackets and normal scribe robes are light.
Captain has a special heavy suit as an alternate, to be used in the loadout that previously had their PA. Might be removed pending BoS command structure changes.

They are not children of items from f13armor.dm that they emulate; Brotherhood has its own root armor subtype.

Power armor is not included in this at all.*/

//Knight Armors

obj/item/clothing/suit/armor/f13/medium/bos/knight //Copy of Combat Armor, which it will be craftable from. Currently given to Knight-Aspirants as well to avoid making a separate initiate armor.
	name = "brotherhood knight armor"
	desc = "A set of combat armor set made by the Brotherhood of Steel, standard issue for all Knights and Knight-Aspirants. It bears a red stripe."
	icon_state = "brotherhood_armor_knight"
	item_state = "brotherhood_armor_knight"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 15,
		bio = 0,
		rad = 5
	)

obj/item/clothing/suit/armor/f13/medium/bos/knight/reinforced //Copy of Combat Armor Mk2, which it will be able to be crafted from.
	name = "reinforced knight armor"
	desc = "A reinforced set of bracers, greaves, and torso plating of prewar design. This one is kitted with additional plates and repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_armor_mk2"
	item_state = "brotherhood_armor_mk2"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	armor = list(
		melee = 30,
		bullet = 50,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)

obj/item/clothing/suit/armor/f13/medium/bos/knight/senior //Copy of Combat Armor Mk2.
	name = "brotherhood senior knight armor"
	desc = "A reinforced combat armor set made by the Brotherhood of Steel, standard issue for all Senior Knights. It bears a silver stripe."
	icon_state = "brotherhood_armor_senior"
	item_state = "brotherhood_armor_senior"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	armor = list(
		melee = 30,
		bullet = 50,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)

obj/item/clothing/suit/armor/f13/medium/bos/knight/captain //Continues pattern of change from Knight to Senior Knight armor. +.05 slowdown, +5 bullet, energy, bomb, and rad protection. Better than waster armor, fit for a faction leader.
	name = "brotherhood knight captain armor"
	desc = "A superior combat armor set made by the Brotherhood of Steel, standard issue for all knight captains. It bears golden embroidery."
	icon_state = "brotherhood_armor_captain"
	item_state = "brotherhood_armor_captain"
	equip_delay = 1 SECONDS
	slowdown = 0.25
	armor = list(
		melee = 30,
		bullet = 55,
		energy = 40,
		bomb = 25,
		bio = 0,
		rad = 15
	)

obj/item/clothing/suit/armor/heavy/f13/bos/knight/captainheavy //Copy of Marine armor, similar to current code's standard KC armor. Needs a sprite.
	name = "brotherhood knight captain heavy armor"
	desc = "A heavy combat armor set made by the Brotherhood of Steel, for knight captains dedicated to bunker defense. It bears golden embroidery."
	icon_state = "brotherhood_armor_captain"
	item_state = "brotherhood_armor_captain"
	slowdown = 0.3
	equip_delay = 2 SECONDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = 40,
		bullet = 50,
		energy = 30,
		bomb = 35,
		bio = 80,
		rad = 50
	)

//Scout Jackets. These will need all-new sprites, as they are jackets rather than full suits of armor to match the base armor with the speed I wanted.

obj/item/clothing/suit/armor/f13/light/bos/scout //Copy of combat leather jacket, which it will be craftable from. The fact that combat leather jackets are craftable means that this can be reliably produced in-round for off-duties.
	name = "brotherhood scout jacket"
	desc = "A heavy jacket reinforced with padding and internal armor plating. Used primarily for recon by Knights, it has red stripes."
	icon_state = "brotherhood_scout_knight"
	item_state = "brotherhood_scout_knight"
	slowdown = 0.05
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 25,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)

obj/item/clothing/suit/armor/f13/light/bos/scout/senior //+5 melee and bullet armor from base, no increase in cooldown so Senior scouts aren't slower than the rest of the scouting party.
	name = "brotherhood senior knight scout jacket"
	desc = "A heavy jacket reinforced with padding and some additional internal armor plating. Used primarily for recon by Senior Knights, it has silver stripes."
	icon_state = "brotherhood_scout_senior"
	item_state = "brotherhood_scout_senior"
	slowdown = 0.05
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 30,
		bullet = 25,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)

obj/item/clothing/suit/armor/f13/light/bos/scout/captain //+5 melee and bullet armor from senior, no increase in cooldown.
	name = "brotherhood knight captain scout jacket"
	desc = "A heavy jacket reinforced with padding and some additional internal armor plating. Used primarily for recon by Knight Captains, it has gold stripes."
	icon_state = "brotherhood_scout_captain"
	item_state = "brotherhood_scout_captain"
	slowdown = 0.05
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 30,
		bullet = 25,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)

//Scribe robes. These use the storage subtype, and thus have pockets. They are not labcoats however, so they don't have toggleable buttons and do have some armor and slowdown.

obj/item/clothing/suit/storage/f13/bos/scribe 
	name = "brotherhood scribe robe"
	desc = "A red cloth robe worn by Scribes of the Brotherhood of Steel."
	icon_state = "scribe"
	item_state = "scribe"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 15,
		bullet = 15,
		energy = 10,
		bomb = 10,
		bio = 50,
		rad = 10
	)

obj/item/clothing/suit/storage/f13/bos/scribe/proctor //Has another pocket
	name = "brotherhood proctor robe"
	desc = "A red cloth robe with silver gildings worn by Proctors of the Brotherhood of Steel."
	icon_state = "seniorscribe"
	item_state = "seniorscribe"

obj/item/clothing/suit/storage/f13/bos/scribe/proctor/New()
	..()
	pockets = new/obj/item/storage/internal(src)
	pockets.storage_slots = 3
	pockets.max_w_class = ITEM_SIZE_SMALL
	pockets.max_storage_space = 6

obj/item/clothing/suit/storage/f13/bos/scribe/head //Has another pocket
	name = "brotherhood head scribe robe"
	desc = "A red cloth robe with gold gildings worn by Head Scribes of the Brotherhood of Steel."
	icon_state = "headscribe"
	item_state = "headscribe"

obj/item/clothing/suit/storage/f13/bos/scribe/head/New()
	..()
	pockets = new/obj/item/storage/internal(src)
	pockets.storage_slots = 4
	pockets.max_w_class = ITEM_SIZE_SMALL
	pockets.max_storage_space = 8


obj/item/clothing/suit/storage/f13/bos/fieldscribe //Has increased slowdown and armor.
	name = "fieldscribe coat"
	desc = "A heavy-duty coat for Scribes going into the field of battle."
	icon_state = "scribecoat"
	item_state = "scribecoat"
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 20,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 50,
		rad = 10
	)