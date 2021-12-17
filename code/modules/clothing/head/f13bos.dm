/*Fallout 13 Brotherhood Faction helmets.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper helmets should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- BOS get good helmets because muh combat armor hehe hoho - if this is an issue just make them metal helmets, I don't fucking know.
*/

//Initiate helmet; akin to a metal helmet.
/obj/item/clothing/head/armor/f13/bos/initiate
	name = "Brotherhood intiate helmet"
	desc = "A once servicable combat helmet that has seen.. clearly better days. It looks fine at first glance, like a proper helmet, but upon inspection on the inside once can see multiple patched holes. \
			Probably not much better than a metal helmet.."
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "metalhelmet"
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 20,
		bomb = 25,
		bio = 5,
		rad = 5
	)

//Knight helmet; equal to a combat helmet.
/obj/item/clothing/head/armor/f13/bos/knight
	name = "Brotherhood "
	desc = "An advanced pre-war military helmet, complete with cushioning and advanced protection."
	icon_state = "combat_helmet"
	body_parts_covered = HEAD | EARS | EYES
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)