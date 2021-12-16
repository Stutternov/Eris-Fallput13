/*Fallout 13 Legion armors

It's noteworthy that decanii are intended to wear the same armor as the group they lead, e.g. a Recruit Decanus will wear recruit armor, just like in lore.*/

obj/item/clothing/suit/armor/f13/light/legion
    icon = 'icons/inventory/suit/leg-icon.dmi'

obj/item/clothing/suit/armor/f13/light/legion/recruit //Tier 3.5
    name = "legion recruit armor"
    desc = "A pre-war football player's shoulder and chest pads, lightly reinforced with additional leather and given to recruits in Caesar's Legion."
    icon_state = "legrecruit"
    item_state = "legrecruit"
    slowdown = 0.05
    armor = list(
        melee = 35,
        bullet = 30,
        energy = 20,
        bomb = 20,
        bio = 0,
        rad = 0
    )

obj/item/clothing/suit/armor/f13/light/legion/prime //Tier 3.5
    name = "legion prime armor"
    