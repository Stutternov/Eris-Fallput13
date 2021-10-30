/datum/category_group/setup_option_category/background/fate
	name = "Upbringing"
	category_item_type = /datum/category_item/setup_option/background/fate

/datum/category_item/setup_option/background/fate

/datum/category_item/setup_option/background/fate/refugee
	name = "Homeless Refugee"
	desc = "War.. War never changes. With the fighting at home you were forced to flee all those years back. \
			From where no longer matters, what matters is you got out alive. What you missed out on education wise has come to you in street-smarts at least."

	stat_modifiers = list(
		STAT_TGH = 10,
		STAT_MEC = 5,
		STAT_COG = -5
	)

/datum/category_item/setup_option/background/fate/caravaneer
	name = "Caravaneer Tagalong"
	desc = "The road has been your home for quite some time. You've seen almost everything there is to see. \
			From gunslinging sheriffs to ruthless bandits and mutant raiders. You learned quick to toughten up and keep your hand on your holster at all times."

	stat_modifiers = list(
		STAT_TGH = 5,
		STAT_VGL = 5
	)

/datum/category_item/setup_option/background/fate/inventor
	name = "Homemade Inventor"
	desc = "A homemade genius! Turning tin-cans and copper wires into coductors, burnt-out vacuum cleaners into nail canons, the whole nine-yard! \
			You're skilled in inventing new uses with both trash and treasure alike!"

	stat_modifiers = list(
		STAT_MEC = 5,
		STAT_COG = 5
	)

/datum/category_item/setup_option/background/fate/moralist
	name = "Religious Upbringing"
	desc = "While some would say that moralists are weak you beg to defer. Your faith brings out the best in you, pushing you to care for others. \
			Sometimes a little too much though, for while you love to see God’s work on earth - you loath man's suffering."

	stat_modifiers = list(STAT_VIG = 5)
	perks = list(PERK_MORALIST)

/datum/category_item/setup_option/background/fate/rat
	name = "Sewer Rat"
	desc = "Maybe it was safe living. Maybe it was due to the weather. Maybe it was your upbringing. Or, hell, maybe you really are just a sicko who loves the smell of sewage. \
			While your eyes may not be sharp due to the darkness you have learned to be resourceful and live in the shadows, just like the rats who lived around you."

	perks = list(PERK_RAT)
	stat_modifiers = list(
		STAT_MEC = 10,
		STAT_VIG = -10
	)

/datum/category_item/setup_option/background/fate/noble
	name = "Sheltered Life"
	desc = "You lived a sheltered life as a child, sheltered from what the earth had become around you. \
			Maybe it was in a vault or maybe your parents did a good job at hiding the mutants lurking under your bed. \
			Either way, you can’t stand the stress of the world easily. Though you find solace in the heirloom your family left you."

	stat_modifiers = list(
		STAT_COG = 5,
		STAT_TGH = -10
	)
	perks = list(PERK_NOBLE)

/datum/category_item/setup_option/background/fate/drug_addict
	name = "Chem Addict"
	desc = "For reasons you cannot remember, you decided to resort to major chem usage. You have lost the battle, and now you suffer the consequences. \
			Now it is all you that drives you forward. All you have left to fight the cruel reality, or escape from it for some time."

	perks = list(PERK_DRUG_ADDICT)
	restricted_depts = LEGION | NCR | BOS

/datum/category_item/setup_option/background/fate/nihilist
	name = "Godless Cynic"
	desc = "Some would call you an annoying nihilist, a careless moron, or a godless cynic and, well, you are. \
			But it has its upsides, or so you think at least! You manage to see the worst in people, so sometimes you can better cope with their loss. \
			After all, maybe the deserved it! You can learn from their mistakes,, god, you actually are insufferable."

	stat_modifiers = list(STAT_COG = 5)
	perks = list(PERK_NIHILIST)

/datum/category_item/setup_option/background/fate/freelancer
	name = "Jack of All Trades"
	desc = "You know the saying, jack of all trades, master of none. That’s you. \
			Sure, you’re decent at nearly everything, but - that’s about it. You’re just ‘average’. What a boring existence."

	perks = list(PERK_FREELACER)

/datum/category_item/setup_option/background/fate/glasscanon
	name = "Glass Canon"
	desc = "Sure, you can hit hard, move fast, and spin on a dime but you go down with just a few hits. \
			Maybe you can knock someone out with a few good punches but you have such a low threshold for beatings you seem to go down even quicker."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_VIG = 5,
		STAT_TGH = -15
	)

/datum/category_item/setup_option/background/fate/poindexter
	name = "Poindexter"
	desc = "Some called you the smartest man around, others called you a dork or a poindexter.. and you very well might be! \
			You've put your swollen cranium and superior intellect to good work through the years, learning all you can to be the best at what you do. \
			You're a nerd, and you embrace it! Just like how your tighty-whities used to embrace you after a wedgie when your bully demanded your lunch money, dweeb."

	stat_modifiers = list(
		STAT_MEC = 5,
		STAT_COG = 10,
		STAT_BIO = 5,
		STAT_ROB = -10,
		STAT_TGH = -10
	)

/datum/category_item/setup_option/background/fate/alcoholic
	name = "Alcoholic"
	desc = "It may have not been a good idea to use empty beer-bottles as baby bottles.. \
			Be it an issue of genetics, taught habits or just outright bad life choices you've found yourself only finding joy out of the bottom of the bottle. \
			It's the only time you feel right anymore.."

	stat_modifiers = list(STAT_COG = -10)
	perks = list(PERK_ALCOHOLIC)

	restricted_depts = LEGION

//Originally called Oborin Syndrome; now used as a possible New Plauge reference.
/datum/category_item/setup_option/background/fate/sickly_upbringing
	name = "Sickly Upbringing"
	desc = "You were struck down by a mysterious illneess in your early years. \
			It's not clear what caused it but it had a permanent effect on your vision and taste. The loss of color to the world and your taste buds..\
			You're lucky to be alive, but the outcome has had a blessing in a way. You are able to be content in life while others commonly cannot."

	perks = list(PERK_SICKLY_UPBRINGING)
	stat_modifiers = list(
		STAT_VIG = 5
	)
