/* Fallout 13 Brotherhood of Steel armors.

Captain has a special heavy suit as an alternate, to be used in the loadout that previously had their PA. Might be removed pending BoS command structure changes, also probably unbalanced since paladins get PA.

Power armor is not included in this at all.*/

//Knight Armors

obj/item/clothing/suit/armor/f13/medium/bos
	icon = 'icons/inventory/suit/bos-icon.dmi'

obj/item/clothing/suit/armor/f13/medium/bos/knight //Tier 3.5, craftable from Combat Armor
	name = "brotherhood knight armor"
	desc = "A set of combat armor set made by the Brotherhood of Steel, standard issue for the Knights and Knight Aspirants. It bears a red stripe."
	icon_state = "brotherhood_armor_knight"
	item_state = "brotherhood_armor_knight"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	armor = list(
		melee = 35,
		bullet = 45,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)

obj/item/clothing/suit/armor/f13/medium/bos/knight/senior 
	name = "brotherhood senior knight armor"
	desc = "A reinforced combat armor set made by the Brotherhood of Steel, standard issue for all Senior Knights. It bears a silver stripe."
	icon_state = "brotherhood_armor_senior"
	item_state = "brotherhood_armor_senior"

obj/item/clothing/suit/armor/f13/medium/bos/knight/reinforced //Tier 4.5, craftable from reinforced combat armor
	name = "reinforced knight armor"
	desc = "A reinforced set of bracers, greaves, and torso plating of prewar design. This one is kitted with additional plates and repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_armor_mk2"
	item_state = "brotherhood_armor_mk2"
	equip_delay = 1.5 SECONDS
	slowdown = 0.25
	armor = list(
		melee = 40,
		bullet = 50,
		energy = 45,
		bomb = 25,
		bio = 0,
		rad = 10
	)

obj/item/clothing/suit/armor/f13/medium/bos/knight/reinforced/captain
	name = "brotherhood knight captain armor"
	desc = "A superior combat armor set made by the Brotherhood of Steel, standard issue for all knight captains. It bears golden embroidery."
	icon_state = "brotherhood_armor_captain"
	item_state = "brotherhood_armor_captain"

obj/item/clothing/suit/armor/heavy/f13/bos/knight/captainheavy //Tier 5.5. Will need new sprite if implemented
	name = "brotherhood knight captain heavy armor"
	desc = "A heavy combat armor set made by the Brotherhood of Steel, for knight captains dedicated to bunker defense. It bears golden embroidery."
	icon_state = "brotherhood_armor_captain"
	item_state = "brotherhood_armor_captain"
	slowdown = 0.3
	equip_delay = 2 SECONDS
	armor = list(
		melee = 50,
		bullet = 50,
		energy = 55,
		bomb = 35,
		bio = 80,
		rad = 55
	)

//Scout Cloaks. These will need all-new sprites, as they are cloaks rather than armor.

obj/item/clothing/suit/armor/f13/light/bos/scout //Tier 3.5
	name = "brotherhood scout cloak"
	desc = "A lightweight cloak designed to permit speedy reconnaisance while the advanced textiles still provide reasonable protection. Used primarily by Knights, it has red designs on it."
	icon_state = "brotherhood_scout_knight"
	item_state = "brotherhood_scout_knight"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 15
	)

obj/item/clothing/suit/armor/f13/light/bos/scout/senior
	name = "brotherhood senior knight scout jacket"
	desc = "A heavy jacket reinforced with padding and some additional internal armor plating. Used primarily for recon by Senior Knights, it has silver stripes."
	icon_state = "brotherhood_scout_senior"
	item_state = "brotherhood_scout_senior"

obj/item/clothing/suit/armor/f13/light/bos/scout/captain //Tier 4.5
	name = "brotherhood knight captain scout jacket"
	desc = "A heavy jacket reinforced with padding and some additional internal armor plating. Used primarily for recon by Knight Captains, it has gold stripes."
	icon_state = "brotherhood_scout_captain"
	item_state = "brotherhood_scout_captain"
	armor = list(
		melee = 30,
		bullet = 30,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 15
	)

//Scribe robes. These use the storage subtype, and thus have two pockets. They are not labcoats however, so they don't have toggleable buttons and do have some armor and slowdown.

obj/item/clothing/suit/storage/f13/bos
	icon = 'icons/inventory/suit/bos-icon.dmi'

obj/item/clothing/suit/storage/f13/bos/scribe //Tier 1.5
	name = "brotherhood scribe robe"
	desc = "A red textile robe worn by Scribes of the Brotherhood of Steel."
	icon_state = "scribe"
	item_state = "scribe"
	slowdown = 0.05
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 20,
		bullet = 25,
		energy = 20,
		bomb = 10,
		bio = 50,
		rad = 10
	)

obj/item/clothing/suit/storage/f13/bos/scribe/proctor //Has three pockets.
	name = "brotherhood proctor robe"
	desc = "A red textile robe with silver gildings worn by Proctors of the Brotherhood of Steel."
	icon_state = "seniorscribe"
	item_state = "seniorscribe"

obj/item/clothing/suit/storage/f13/bos/scribe/proctor/New()
	..()
	pockets = new/obj/item/storage/internal(src)
	pockets.storage_slots = 3
	pockets.max_w_class = ITEM_SIZE_SMALL
	pockets.max_storage_space = 6

obj/item/clothing/suit/storage/f13/bos/scribe/head //Has four pockets. Life of luxury.
	name = "brotherhood head scribe robe"
	desc = "A red textile robe with gold gildings worn by Head Scribes of the Brotherhood of Steel."
	icon_state = "headscribe"
	item_state = "headscribe"

obj/item/clothing/suit/storage/f13/bos/scribe/head/New()
	..()
	pockets = new/obj/item/storage/internal(src)
	pockets.storage_slots = 4
	pockets.max_w_class = ITEM_SIZE_SMALL
	pockets.max_storage_space = 8


obj/item/clothing/suit/storage/f13/bos/fieldscribe //Tier 2.5
	name = "fieldscribe coat"
	desc = "A heavy-duty coat for Scribes going into potential danger."
	icon_state = "scribecoat"
	item_state = "scribecoat"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 30,
		energy = 30,
		bomb = 10,
		bio = 50,
		rad = 10
	)