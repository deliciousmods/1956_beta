
NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048
NDefines.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 8196
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 24000
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_AFTER = {0, 20} -- After this amount of VP the map icon becomes bigger dot.
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF = {200, 500, 750} -- At what camera distance the VP name text disappears.
NDefines.NGraphics.VICTORY_POINTS_DISTANCE_CUTOFF = {300, 750, 1000} -- At what distance VPs are hidden
-- Focuses
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 14

-- Country balance
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.1
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 40
NDefines.NCountry.BASE_RESEARCH_SLOTS = 3

-- Military
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 5
NDefines.NMilitary.UNIT_EXP_LEVELS = {0.02, 0.04, 0.06,	0.08, 0.1, 0.14, 0.18, 0.22, 0.26, 0.3, 0.39, 0.48, 0.57, 0.66, 0.75, 0.78, 0.81, 0.84, 0.87, 0.9}
NDefines.NMilitary.ARMY_EXP_BASE_LEVEL = 5
NDefines.NMilitary.TRAINING_MAX_LEVEL = 10
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 1000 -- Max army experience a country can store
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 1000 -- Max navy experience a country can store
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 1000  -- Max air experience a country can store
NDefines.NMilitary.EXPERIENCE_COMBAT_FACTOR = 0.03
NDefines.NMilitary.FIELD_MARSHAL_DIVISIONS_CAP = 32
NDefines.NMilitary.RECON_SKILL_IMPACT = 6
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 8 -- Base cost to unlock a regiment slot,
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 4 -- Base cost to change a regiment column.
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 10

NDefines.NMilitary.BASE_LEADER_TRAIT_GAIN_XP = 0.7
NDefines.NMilitary.UNIT_EXPERIENCE_PER_COMBAT_HOUR = 0.000175
NDefines.NMilitary.FIELD_EXPERIENCE_MAX_PER_DAY = 12
NDefines.NMilitary.ENCIRCLED_DISBAND_MANPOWER_FACTOR = 0.1
NDefines.NMilitary.PLAYER_ORDER_PLANNING_DECAY = 0.005
NDefines.NMilitary.DISBAND_MANPOWER_LOSS = 0.0
NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 4.1 --AI should concentrate forces more, a bit experimental. Increased from 4.0 to combat issues with AI death stacks - SpicyAlfredo

NDefines.NMilitary.FIELD_MARSHAL_XP_RATIO = 0.7
NDefines.NMilitary.COMMANDER_LEVEL_UP_STAT_WEIGHTS = {5, 5, 3, 4}
NDefines.NMilitary.NEW_COMMANDER_RANDOM_PERSONALITY_TRAIT_CHANCES = { -- Chances to gain a personality trait for new generals
	0.80, --50% for first trait
	0.40, --15% for second trait after that
	0.05, 
	0.01,
}

-- Technology
NDefines.NTechnology.BASE_TECH_COST = 80
NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 4.4 -- Base year ahead penalty
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 50.0

-- Air Combat
NDefines.NAir.AIR_WING_XP_LEVELS = {20, 40, 60, 80, 100, 140, 180, 220, 260, 300, 390, 480, 570, 660, 750, 780, 810, 840, 870, 900}
NDefines.NAir.AIR_WING_XP_TRAINING_MAX = 300.0
NDefines.NAir.AIR_WING_XP_TRAINING_MISSION_GAIN_DAILY = 4.5
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.01
NDefines.NAir.AIR_WING_XP_LOSS_WHEN_KILLED = 200
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 1000 -- Max stats was 200
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 1000 -- was 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 1000 -- was 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 9999 -- Used to balance the damage done while bombing. was 1500
NDefines.NAir.AIR_WING_XP_LOSS_REDUCTION_OVER_FRIENDLY_TERRITORY_FACTOR = 0.7
NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.05				-- Conversion scale for planes to air supply #original was 0.05

NDefines.NAir.MISSION_COMMAND_POWER_COSTS = { -- command power cost per plane to create a mission
		0.0, -- AIR_SUPERIORITY
		0.0, -- CAS
		0.0, -- INTERCEPTION
		0.0, -- STRATEGIC_BOMBER
		0.0, -- NAVAL_BOMBER
		0.0, -- DROP_NUKE
		0.0, -- PARADROP
		0.0, -- NAVAL_KAMIKAZE
		0.0, -- PORT_STRIKE
		0.01, -- AIR_SUPPLY
		0.0, -- TRAINING
		0.0, -- NAVAL_MINES_PLANTING
		0.0, -- NAVAL_MINES_SWEEPING
		0.0, -- MISSION_RECON
    }

-- Politics
NDefines.NPolitics.DEFAULT_OCCUPATION_POLICY = 0

NMilitary = {

	
	BASE_CAPTURE_EQUIPMENT_RATIO = 0.02,				-- after a successful land combat, ratio of the equipments that are being captured/salvaged from enemy's lost equipment

	
	NEW_COMMANDER_RANDOM_BASIC_TRAIT_CHANCES = {  -- chances to gain a basic trait for new generals
	},
	
	NEW_COMMANDER_RANDOM_STATUS_TRAIT_CHANCES = {  -- chances to gain a status trait for new generals
	},
	
	NEW_COMMANDER_RANDOM_SKILL_CHANCES = {  -- chances to give a random stat skill for new generals
	},

	NEW_NAVY_LEADER_RANDOM_SKILL_CHANCES = { -- chances to give a random stat skill point for a new admiral
	},
}

NAI = {
	GARRISON_FRACTION = 0.0, 					-- How large part of a front should always be holding the line rather than advancing at the enemy
	
	DIPLOMATIC_ACTION_GOOD_BAD_RATIO_THRESHOLD = 1,
	BASE_RELUCTANCE = 20, 						-- Base reluctance applied to all diplomatic offers
	DIPLOMATIC_ACTION_RANDOM_FACTOR = 0.5, 		-- How much of the AI diplomatic action scoring is randomly determined (1.0 = half random, 2.0 = 2/3rd random, etc)
	DIPLOMATIC_ACTION_PROPOSE_SCORE = 50, 		-- AI must score a diplomatic action at least this highly to propose it themselves
	DILPOMATIC_ACTION_DECLARE_WAR_WARGOAL_BASE = 50, -- Base diplomatic action score bonus to go to war per wargoal
	DIPLOMATIC_ACTION_BREAK_SCORE = -10, 		-- AI must score a diplomatic action less than this to break it off	
	DIPLOMACY_CREATE_FACTION_FACTOR = 0.75,		-- Factor for AI desire to create a new faction. Val < 1.0 makes it less likely to create than to join.
	DIPLOMACY_FACTION_WRONG_IDEOLOGY_PENALTY = 95, -- AI penalty for diplomatic faction acitons between nations of different ideologies
	DIPLOMACY_FACTION_SAME_IDEOLOGY_MAJOR = 15, -- AI bonus acceptance when being asked about faction is a major of the same ideology
	DIPLOMACY_FACTION_NEUTRALITY_PENALTY = 50,	-- Neutral nations have a separate penalty, not wanting to get involved at all, rather than caring much about the difference in ideology
	DIPLOMACY_FACTION_GLOBAL_TENSION_FACTOR = 0.2,-- How much the AI takes global tension into account when considering faction actions
	TENSION_DECAY = 0.15,							-- Each months tension decays this much. Base was 0.1
	DIPLOMACY_FACTION_WAR_RELUCTANCE = -50,		-- Penalty to desire to enter a faction with a country that we are not fighting wars together with.
	DIPLOMACY_FACTION_TAKE_OVER_RELUCTANCE_VERSUS_HUMAN = 2.0,	-- Multiplier penalty for how much stronger than a human faction member an AI country must be to choose to assume faction leadership.
	DIPLOMACY_SCARED_MINOR_EXTRA_RELUCTANCE = -50, -- extra reluctance to join stuff as scared minor
	DIPLOMACY_FACTION_PLAYER_JOIN = 20,			-- Bonus for human players asking to join a faction.
	DIPLOMACY_BOOST_PARTY_COST_FACTOR = 100.0,	-- Desire to boost party popularity subtracts the daily cost multiplied by this
	DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 5.0,-- Desire to boost relations subtracts the cost multiplied by this
	DIPLOMACY_IMPROVE_RELATION_PP_FACTOR = 0.1,	-- Desire to boost relations adds total PP multiplied by this
	DIPLOMACY_SEND_ATTACHE_COST_FACTOR = 5.0,	-- Desire to send attache substracts the cost multiplied by this
	DIPLOMACY_SEND_ATTACHE_PP_FACTOR = 0.1,	-- Desire to send attache adds total PP multiplied by this
	DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 4,	-- AI will not repeat offers until at least this time has passed, and at most the double
	DIPLOMACY_CALL_ALLY_VALIDITY_DURATION = 1,	-- Overwrite above value for CallAlly and JoinAlly diplo action. This is however fixed, and is not subject to randomness. Also, this is the time the AI will keep the action in its incoming queue without declining it.
	DIPLOMACY_SEND_MAX_FACTION = 0.75,			-- Country should not send away more units than this as expeditionaries
	DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 50,		-- Base value of volunteer acceptance (help is welcome)
	DIPLOMACY_ACCEPT_ATTACHE_BASE = 50,			-- Base value of attache acceptance (help is welcome)
	DIPLOMACY_ACCEPT_ATTACHE_OPINION_TRASHHOLD = 20, -- Value of opinion that will remove accepting penalty for receiveing the attache
	DIPLOMACY_ACCEPT_ATTACHE_OPINION_PENALTY = -100, -- Value of acceptance penalty if the opinion too low 
	DIPLOMACY_FACTION_MAJOR_AT_WAR = 1000.0,	-- Factor that will be multiplied with the surrender level in the desire to offer to the other ai to join a faction
	DIPLOMACY_FACTION_SURRENDER_LEVEL = 20, 	-- How much the recipient nation losing matters for joining a faction
	DIPLO_PREFER_OTHER_FACTION = -200,			-- The country has yet to ask some other faction it would prefer to be a part of.

	PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.15,	-- Base value for how much of currently used equipment the AI will at least strive to have in stock
										
	PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.60,	-- Minimum strength for a unit to actively attack an enemy unit when executing a plan
	PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.75,		-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
	PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.50,	
	PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.25,		
	PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.40,
	ORG_UNIT_WEAK = 0.4,						-- Organization % for unit to be considered weak
	STR_UNIT_WEAK = 0.4,						-- Strength (equipment) % for unit to be considered weak
	
	ORG_UNIT_NORMAL = 0.7,						-- Organization % for unit to be considered normal
	STR_UNIT_NORMAL = 0.7,						-- Strength (equipment) % for unit to be considered normal

	MAX_ALLOWED_NAVAL_DANGER = 51,				-- AI will ignore naval paths that has danger value of above this threshold while assigning units
	
	FASCISTS_ALLY_DEMOCRACIES = -150,
	FASCISTS_ALLY_COMMUNISTS = -150,
	COMMUNISTS_ALLY_FASCISTS = -150,
	DEMOCRACIES_ALLY_COMMUNISTS = -75,
	COMMUNISTS_ALLY_DEMOCRACIES = -75,
	
	DESPERATE_AI_WEAK_UNIT_STR_LIMIT = 0.1,					-- ai will increase number of units assigned to break from desperate situations when units are start falling lower than this str limit
	DESPERATE_AI_MIN_ORG_BEFORE_ATTACK = 0.85,					-- ai will wait for this much org to attack an enemy prov in desperate situations
	DESPERATE_AI_MIN_ORG_BEFORE_MOVE = 0.25,					-- ai will wait for this much org to move in desperate situations
	DESPERATE_ATTACK_WITHOUT_ORG_WHEN_NO_ORG_GAIN = 175,		-- if ai can't regain enough org to attack in this many hours, it will go truly desperate and attack anyway (still has to wait for move org)



	DIVISION_DESIGN_WEIGHTS = {							-- Base values used by AI to evaluate value of a stat
		-- Army Values
		0.5, -- default_morale
		1.0, -- defense
		1.0, -- breakthrough
		1.0, -- hardness
		1.3, -- soft_attack #was 1.2 should build better divs.
		0.01, -- hard_attack #was 0. Experiment so AI base vaules anti-tank and tanks more - SpicyAlfrdo
		0.0, -- recon
		0.0, -- entrenchment
		0.0, -- initiative
		0.0, -- casualty_trickleback 
		-1.0, -- supply_consumption_factor
		-0.25, -- supply_consumption
		0.0, -- suppression
		0.0, -- suppression_factor
		0.0, -- experience_loss_factor
		0.0, -- equipment_capture_factor
		0.0, -- fuel_capacity
		-- Navy Values
		0.0, -- surface_detection
		0.01, -- sub_detection Experimental nudge for the ai to not build DD's that let Subs massacre them - SpicyAlfrdo
		0.0, -- surface_visibility
		0.0, -- sub_visibility
		0.0, -- lg attack
		0.0, -- lg piercing
		0.0, -- hg attack
		0.0, -- hg piercing
		0.0, -- torpedo
		0.0, -- sub attack
		0.0, -- anti air attack
		0.0, -- amphibious_defense
		0.0, -- naval_speed
		0.0, -- range
		0.0, -- mine plant
		0.0, -- mine sweep
		0.0, -- raiding coordination
		0.0, -- patrol coordination
		0.0, -- search and destroy coordination
		-- Air Values
		0.0, -- air_range
		0.0, -- air_defence
		0.0, -- air_attack
		0.0, -- air_agility
		0.0, -- air_bombing
		0.01, -- air_superiority #ai nudge for the most important air stat bar none - Spicyalfredo
		0.0, -- naval_strike_attack
		0.0, -- naval_strike_targetting
		0.0, -- air_ground_attack
		0.0, -- air_visibility_factor
		-- Common Values
		1.0, -- max_organisation
		1.0, -- max_strength
		1.0, -- maximum_speed
		1.0, -- armor_value
		0.5, -- ap_attack
		0.0, -- reliability
		0.0, -- reliability_factor
		-0.25, -- weight
		0.0, -- fuel_consumption
		0.0, -- fuel_consumption_factor
		-- Special Values
		0.0, -- strategic_attack
		0.0, -- carrier_size
		0.0, -- acclimatization hot gain
		0.0, -- acclimatization cold gain
		-0.5, -- build_cost_ic
	},


	INVASION_COASTAL_PROVS_PER_ORDER = 28,				-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)

	MAX_UNITS_FACTOR_INVASION_ORDER = 1.0,				-- Factor for max number of units to assign to naval invasion orders
	DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0,			-- Factor for desired number of units to assign to naval invasion orders
	MIN_UNITS_FACTOR_INVASION_ORDER = 0.5,				-- Factor for min number of units to assign to naval invasion orders #was 1.0 should reduce low unit number naval invasions


	NEW_LEADER_EXTRA_PP_FACTOR = 1.5,					-- Country must have at least this many times extra PP to get new admirals or army leaders #Was 2.0
	ATTACK_HEAVILY_DEFENDED_LIMIT = 0.7,				-- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%) #was 0.5
	HOUR_BAD_COMBAT_REEVALUATE = 48,                   -- if we are in combat for this amount and it goes shitty then try skipping it #was 100

	

	PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0.1,	-- Is modified by efficency modifiers.
	PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 2.0,			-- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
	PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 2.0,		-- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)
	AREA_DEFENSE_BASE_IMPORTANCE = 4,					-- Area defense order base importance value (used for determining order of troop selections)
	
	
	ALLY_SUPPLY_RATIO_FOR_UNIT_PRODUCTION = 0.00,		-- supply ratio of ally supply chunks will be added to our own supply chunks (since we will fight around allies as well) modified by produce_unit_for_ally_supply_chunks strat
	

	INVASION_DISTANCE_RANDOMNESS = 245,					-- This higher the value, the more unpredictable the invasions. Compares to actual map distance in pixels. #BASE WAS 300
	

	XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 1.5,		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP #BASE WAS 2.0	

	FRONT_EVAL_UNIT_ACCURACY = 0.9,                             -- scale how stupid ai will act on fronts. 0 is potato #BASE WAS 0.7

	MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 35,	-- if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front

	BUILDING_TARGETS_BUILDING_PRIORITIES = {				-- buildings in order of pirority when considering building targets strategies. First has the greatest priority, omitted has the lowest. NOTE: not all buildings are supported by building targets strategies.
		'industrial_complex',
		'infrastructure',
		'arms_factory',
		'synthetic_refinery',
		'air_base',
		'radar_station',
		'nuclear_reactor',

	},
NOperatives = {
	OPERATIVE_MISSION_DETECTION_CHANCE_FACTOR = {
		-- Factor multiplied to the detection chance of an agent on mission before the offsets
		0.0, -- NoMission
		1.0, -- BuildIntelNetwork
		1.0, -- QuietIntelNetwork
		1.0, -- CounterIntelligence
		0.0, -- RootOutResistance
		2.0, -- BoostIdeology
		0.1, -- ControlTrade
		0.1, -- DiplomaticPressure
		2.0, -- Propaganda
	},
	
	COUNTER_INTELLIGENCE_FOREIGN_AGENT_FACTOR = 1.1,			-- Multiplier to the counter intelligence provided by foreign (ally) operatives

	ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_XP_GAIN = 100,					-- Xp gain when an enemy operative is captured in the country the operative is assigned to counter intelligence to. Apply to a single randomly selected operative
	ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_WEIGHT_OWN_COUNTRY_FOR_XP = 3,			-- An integer on how likely an operative operating in his own country is to get selected for the xp reward on enemy operative capture
	ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_WEIGHT_DIFFERENT_COUNTRY_FOR_XP = 1,		-- same for an operative assigned to counter intelligence in a different country than his own

},
NResistance = {
		
	GARRISON_MANPOWER_LOST_BY_ATTACK = 0.005, 	--WAS 0.018 Ratio of manpower lost by garrison at each attack on garrison (this number will be reduced by the hardness of garrison template)
		
},
NDiplomacy = {
	LICENSE_ACCEPTANCE_PUPPET_BASE = 20,			-- Acceptance modifier for puppets requesting production licenses.
	LICENSE_ACCEPTANCE_TECH_DIFFERENCE = 2, 		-- Acceptance modifier for each year of technology difference.
	LICENSE_ACCEPTANCE_TECH_DIFFERENCE_BASE = 20,    -- Acceptance base for tech difference
	LICENSE_ACCEPTANCE_SAME_FACTION = 30,			-- Acceptance modifier for being in the same faction
},
NCountry = {
	FEMALE_UNIT_LEADER_BASE_CHANCE = { 
		-- applies as a factor to female unit leader randomization
		-- the values needs to be zero if you don't actually have random portraits
		0.0, -- navy leaders
		0.0, -- army leaders
		0.6, -- operatives
	},

},	
}


