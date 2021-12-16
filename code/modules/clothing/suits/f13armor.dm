/*Fallout 13 armors. These are divided into 3 sections.

There are three armor sub-catagories here, plus labcoats. These will be arranged by their armor-class.

Armor is given a tier for balancing purposes based on its slowdown (s) and the sum of the melee, bullet, and energy armor values. (a)
The formula is t=(a-200s)/10-4
The long and short of it is that for balance purposes, 1 tier = -.05 slowdown = 10 protection.
This equivalency is, I believe, **not** actually accurate in actual game. I believe the 10 extra protection will be a bit more useful in combat situations than the .05 decreased slowdown. This is to make heavier armors a little bit better than lighter ones, because they have "bought" a lot more protection.
Bomb, bio, and rad values aren't balanced since they're rarely that impactful, I just assigned what I felt was reasonable given the construction of each armor.
Tier 0 isn't armor, it's clothing. Tier 1 is basic armor that can be easily crafted. Tier two is craftable medium armor, direct upgrades of certain tier one armors. Tier three and four are combat armor and variants. Tier 5 is heavy armors only.
Faction light armors are a lot more reinforced than waster light armors, usually tier 3.5 to make them not completely suck compared to their mainline counterparts.

This file is SPECIFICALLY for loot and non-faction spawns. Factions have their own files. For example, suits/f13bos.dm, suits/f13ncr.dm, etc.
Faction armor is a half-tier (5 protection) above equivalent waster armor.
Most people in a Big Three faction will get tier 3.5 armor, with a reinforced version that can be made from looted armor which is tier 4.5, which is given to leadership players automatically. Elite whitelist roles get tier 4.5 as well, excluding BoS which gets PA.
*/

obj/item/clothing/suit/armor/f13
	icon = 'icons/inventory/suit/f13armor-icon.dmi'

//f13/light Armors

obj/item/clothing/suit/armor/f13/light //Base f13 light armor type, for jackets and light armors. Does *not* cover lower torso by default, as a jacket does not go down that far.
	body_parts_covered = UPPER_TORSO
	item_flags = THICKMATERIAL|DRAG_AND_DROP_UNEQUIP
	cold_protection = UPPER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	blood_overlay_type = "armor"

/obj/item/clothing/suit/armor/f13/light/jacket //Tier 0
	name = "leather jacket"
	desc = "A leather jacket made of either brahmin or lizard skin. Or.. well, you hope that it's brahmin or lizard skin."
	icon_state = "leather_jacket"
	item_state = "leather_jacket"
	armor = list(
		melee = 15,
		bullet = 15,
		energy = 10,
		bomb = 5,
		bio = 0,
		rad = 0
	)
	matter = list(
		MATERIAL_LEATHER = 10,
		MTERIAL_CLOTH = 20
	)

/obj/item/clothing/suit/armor/f13/light/jacket/combat //Tier 1
	name = "combat leather jacket"
	desc = "This leather jacket appears to sport heavier padding and possibly some reinforced sections. Making a fashion statement while ready to break some skulls."
	icon_state = "combat_jacket"
	item_state = "combat_jacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 20,
		bullet = 15,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	matter = list(
		MATERIAL_LEATHER = 10,
		MATERIAL_METAL = 10,
		MTERIAL_CLOTH = 20
	)

obj/item/clothing/suit/armor/f13/light/duster //Tier 0
	name = "leather duster"
	desc = "A floorlength gecko-leather coat. It won't do much to stop a bullet or laser, but it keeps the sun off you and helps at least a bit with the critter bites."
	icon_state = "duster"
	item_state = "duster"
	slowdown = 0.05
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 20,
		bullet = 20,
		energy = 10,
		bomb = 10,
		bio = 0,
		rad = 0
	)

obj/item/clothing/suit/armor/f13/light/duster/combat //Tier 1
	name = "combat leather duster"
	desc = "By sewing some plating into the leather, the duster can be made a bit more combat hardy, though the weight does slow you down a bit."
	icon_state = "combatduster"
	item_state = "combatduster"
	slowdown = 0.1
	armor = list(
		melee =25,
		bullet = 25,
		energy = 20,
		bomb = 15,
		bio = 0,
		rad = 0
	)


//f13/medium Armors

/obj/item/clothing/suit/armor/f13/medium //Base f13 medium armor type. Covers full body except for head and feet.
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/obj/item/clothing/suit/armor/f13/medium/leatherarmor //Tier 1
	name = "leather armor"
	desc = "A basic suit of leather armor, crafted from brahmin hide."
	icon_state = "leather_armor"
	item_state = "leather_armor"
	equip_delay = 0.5 SECONDS
	slowdown = 0.15
	armor = list(
		melee = 30,
		bullet = 25,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/medium/leatherarmor/reinforced //Tier 2
	name = "reinforced leather armor"
	desc = "Some metallic plating has been sewn onto this leather armor, making it far more protective."
	icon_state = "leather_armor_2"
	item_state = "leather_armor_2"
	armor = list(
		melee = 35,
		bullet = 30,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/medium/metalarmor //Tier 1
	name = "metal armor"
	desc = "A set of plates bound together to form a crude chestplate."
	icon_state = "metal_armor"
	item_state = "metal_armor"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	armor = list(
		melee = 30,
		bullet = 40,
		energy = 20,
		bomb = 15,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/medium/metalarmor/reinforced //Tier 2
	name = "reinforced metal armor"
	desc = "A set of polished plates formed together and fitted properly to provide effective protection."
	icon_state = "metal_chestplate2"
	item_state = "metal_chestplate2"
	armor = list(
		melee = 35,
		bullet = 45,
		energy = 20,
		bomb = 15,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/medium/combat //Tier 3
	name = "combat armor"
	desc = "An old set of pre-war combat armor. Once standard issue for U.S. army personnel, now it is found primarily in bunkers or adapted to the uses of various factions."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	armor = list(
		melee = 35,
		bullet = 45,
		energy = 30,
		bomb = 20,
		bio = 0,
		rad = 5
	)

/obj/item/clothing/suit/armor/f13/medium/combat/raider //Tier 3
	name = "raider combat armor"
	desc = "An old set of military grade combat armor that has been upgraded with spikes and extra torso plating to protect against bladed weapons.."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	armor = list(
		melee = 45,
		bullet = 40,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 5
	)

/obj/item/clothing/suit/armor/f13/medium/combat/mk2 //Tier 4
	name = "reinforced combat armor"
	desc = "An old set of advanced, pre-war reinforced combat armor. Originally designed for shock troops and special forces, now it is found primarily in the deepest bunkers or worn by high value faction leaders."
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	equip_delay = 1.5 SECONDS
	slowdown = 0.25
	armor = list(
		melee = 40,
		bullet = 50,
		energy = 40,
		bomb = 25,
		bio = 0,
		rad = 10
	)

/obj/item/clothing/suit/armor/f13/medium/combat/mk2/raider //Tier 4
	name = "reinforced raider armor"
	desc = "A reinforced set of bracers, greaves, and torso plating of prewar design. This one is kitted with additional plates."
	icon_state = "combat_armor_raider"
	item_state = "combat_armor_raider"
	armor = list(
		melee = 50,
		bullet = 45,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)


/*Heavy Armors - To alter subtype as a whole, create new heavy/F13 subtype below here. NOT f13/heavy as with others, as it will mess up inheritance from armor/heavy. Copy/pasted from armor.dm for reference.

/obj/item/clothing/suit/armor/heavy
	name = "heavy armor"
	desc = "A heavily armored suit that protects against moderate damage."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = ITEM_SIZE_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.9
	siemens_coefficient = 0.5
	item_flags = THICKMATERIAL|DRAG_AND_DROP_UNEQUIP|COVER_PREVENT_MANIPULATION|EQUIP_SOUNDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	slowdown = 0.6
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = 35,
		bullet = 35,
		energy = 35,
		bomb = 25,
		bio = 0,
		rad = 0
	)
	equip_delay = 2 SECONDS
	price_tag = 250
	style = STYLE_NEG_HIGH */

obj/item/clothing/suit/armor/heavy/f13/juggernaut //Tier 4, will need brand new sprite. Intended to be the only craftable heavy armor.
	name = "juggernaut armor"
	desc = "A massive hulk of steel and plasteel, the juggernaut armor was first made by raiders after the Great War, but the design has proliferated far since then."
	icon_state = "juggernaut"
	item_state = "juggernaut"
	slowdown = 0.4
	equip_delay = 3.5 SECONDS
	armor = list(
		melee = 65,
		bullet = 50,
		energy = 45,
		bomb = 35,
		bio = 0,
		rad = 30
	)

/obj/item/clothing/suit/armor/heavy/f13/marine //Tier 5
	name = "marine combat armor"
	desc = "An excellent suit of pre-war U.S.M.C. armor found in rare and limited quantities in the wasteland. Surpassed only by newer suits of power armor."
	icon_state = "marinearmor"
	item_state = "marinearmor"
	slowdown = 0.3
	equip_delay = 2 SECONDS
	armor = list(
		melee = 50,
		bullet = 50,
		energy = 50,
		bomb = 35,
		bio = 80,
		rad = 50
	)

obj/item/clothing/suit/armor/heavy/f13/sulphite //Tier 5
	name = "sulphite armor"
	desc = "A heavy steel armor set that features flame jets on the back to intimidate an opponent or just look cool."
	icon_state = "sulphitearmor"
	item_state = "sulphitearmor"
	slowdown = 0.35
	equip_delay = 3 SECONDS
	armor = list(
		melee = 55,
		bullet = 50,
		energy = 55,
		bomb = 35,
		bio = 0,
		rad = 30
	)

/obj/item/clothing/suit/armor/heavy/f13/t45b //Tier 6. Should be very rare spawn, as the only sets in lore were deliberately made by NCR.
	name = "salvaged T-45 power armor"
	desc = "A set of T-45d power armor with the servomotors stripped out so it doesn't require special training to wear properly. Bulky and slow, but offers protection unmatched by any conventional armor."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	equip_delay = 4.5 SECONDS
	slowdown = 0.5
	armor = list(
		melee = 65,
		bullet = 70,
		energy = 65,
		bomb = 45,
		bio = 80,
		rad = 80
	)


// Labcoats

/obj/item/clothing/suit/storage/toggle/labcoat/f13 //Base F13 labcoat. Mostly copied from labcoat.dm with name and description change
	name = "pre-war labcoat"
	desc = "A pre-war suit that protects against minor chemical spills and has pockets."
	icon_state = "labcoat_open"
	item_state = "labcoat"
	icon_open = "labcoat_open"
	icon_closed = "labcoat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	armor = list(
		melee = 0,
		bullet = 0,
		bomb = 0,
		bio = 50,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	
	