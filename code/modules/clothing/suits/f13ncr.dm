/* Fallout 13 New California Republic armors*/

obj/item/clothing/suit/armor/f13/medium/ncr //Tier 3.5
	icon = 'icons/inventory/suit/ncr-icon.dmi'
    name = "NCR infanty armor"
    desc = "A standard-issue armor set made for and given to infantry in the NCRA."
    icon_state = "ncr_armor"
    item_state = "ncr_armor"
    equip_delay = 1 SECONDS
    slowdown = 0.2
    armor = list(
        melee = 35,
        bullet = 50,
        energy = 30,
        bomb = 25,
        bio = 0,
        rad = 5
    )

obj/item/clothing/suit/armor/f13/medium/ncr/reinforced //Tier 4.5, craftable from reinforced combat armor
    name = "reinforced NCR infantry armor"
    desc = "A pre-war set of reinforced combat armor that has been retrofitted for the purposes of the NCRA."
    icon_state = "ncr_armor_mk2"
    item_state = "ncr_armor_mk2"
    equip_delay = 1.5 SECONDS
    slowdown = 0.25
    armor = list(
        melee = 40,
        bullet = 55,
        energy = 40,
        bomb = 30,
        bio = 0,
        rad = 10
    )

obj/item/clothing/suit/armor/f13/medium/ncr/reinforced/sergeant //Should probably have its own sprite, but doesn't right now. Also needs a better description
    name = "NCR sergeant armor"
    desc = "A reinforced armor set issued to sergeants in the NCRA, offering improved protection over the standard issue."

obj/item/clothing/suit/armor/f13/medium/ncr/reinforced/ranger
    name = "ranger patrol armor"
    desc = "A distinctive set of armor hand-manufactured in the NCR for use by Patrol Rangers."
    icon_state = "ncr_patrol"
    item_state = "ncr_patrol"

obj/item/clothing/suit/armor/f13/medium/ncr/reinforced/ranger/veteran //Tier 5.5, stronger than regular with no increased slowdown. It would be nice if our sprite for this showed more of the black armor beneath the coat than the current one.
    name = "veteran ranger combat armor"
    desc = "A traditional Desert Rangers trenchcoat worn atop a full suit of pre-war riot armor, the legendary Black Armor is considered to be one of the most valuable and awe-inspiring items in the entire Republic, and is worn exclusively by Veteran Rangers."
    icon_state = "ranger"
    item_state = "ranger"
    armor = list(
        melee = 45,
        bullet = 60,
        energy = 40,
        bomb = 30,
        bio = 0,
        rad = 10
    )

obj/item/clothing/suit/armor/f13/medium/ncr/officer //Tier 4.5. This is basically faster trooper armor, no difference in protection. Base commanders shouldn't be leading charges, they should be managing the forces as a whole.
    name = "NCR officer armor"
    desc = "A set of lightweight yet protective armor issued to NCRA officers."
    icon_state = "ncr_lt_armor"
    item_state = "ncr_lt_armor"
    equip_delay = 0.5 SECONDS
    slowdown = 0.15



obj/item/clothing/suit/armor/heavy/f13/ncr //Tier 6.5, for heavy troopers only
    icon = 'icons/inventory/suit/ncr-icon.dmi'
    name = "NCR salvaged power armor"
    desc = "A set of T-45d power armor with the servomotors stripped out so it doesn't require special training to wear properly. Bulky and slow, but offers protection unmatched by any conventional armor. This suit has colors marking that it belongs to the NCRA."
    icon_state = "ncr_power_armor"
    item_state = "ncr_power_armor"
    equip_delay = 4.5 SECONDS
    slowdown = 0.5
	armor = list(
		melee = 70,
		bullet = 75,
		energy = 60,
		bomb = 50,
		bio = 80,
		rad = 80
	)

obj/item/clothing/suit/armor/f13/light/ncr //Tier 4.5
    icon = 'icons/inventory/suit/ncr-icon.dmi'
    name = "ranger recon duster"
    desc = "A thicker than average duster worn by NCR recon rangers out in the field. It's not heavily armored by any means, but is easy to move around in and provides excellent protection from the harsh desert environment."
    icon_state = "duster_recon"
    item_state = "duster_recon"
    armor = list(
        melee = 30,
        bullet = 35,
        energy = 20,
        bomb = 20,
        bio = 0,
        rad = 0
    )