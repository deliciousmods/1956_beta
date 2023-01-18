NDefines = {

NGame = {
	END_DATE = "1956.1.1.1", -- we are called r56 for a reason!
},

NDiplomacy = {
		LICENSE_ACCEPTANCE_PUPPET_BASE = 20,			-- Acceptance modifier for puppets requesting production licenses.
		LICENSE_ACCEPTANCE_TECH_DIFFERENCE = 2, 		-- Acceptance modifier for each year of technology difference.
		LICENSE_ACCEPTANCE_TECH_DIFFERENCE_BASE = 20,    -- Acceptance base for tech difference
		LICENSE_ACCEPTANCE_SAME_FACTION = 30,			-- Acceptance modifier for being in the same faction
},

NCountry = {
	SPECIAL_FORCES_CAP_BASE = 0.1,
	SPECIAL_FORCES_CAP_MIN = 40,
	BASE_RESEARCH_SLOTS = 3,
	FEMALE_UNIT_LEADER_BASE_CHANCE = { 
		-- applies as a factor to female unit leader randomization
		-- the values needs to be zero if you don't actually have random portraits
		0.0, -- navy leaders
		0.0, -- army leaders
		0.6, -- operatives
	},
	STARTING_COMMAND_POWER = 10.0,					-- starting command power for every country
	GIE_EXILE_ARMY_LEADER_START_LEVEL = 3,	--Starting level for exile leader
	--AIR_SUPPLY_CONVERSION_SCALE = 0.05,				-- Claimed to be the same as vanilla previously, but BBA changed this value, so commented this out
},	

NResistance = {
	GARRISON_MANPOWER_LOST_BY_ATTACK = 0.005, 	--WAS 0.018 Ratio of manpower lost by garrison at each attack on garrison (this number will be reduced by the hardness of garrison template)	
},

NPolitics = {
	ARMY_LEADER_MAX_COST = 75,				-- max cost BEFORE modifiers
	NAVY_LEADER_MAX_COST = 75,		
	DEFAULT_OCCUPATION_POLICY = 1,
},

NMilitary = {
	DEPLOY_TRAINING_MAX_LEVEL = 5,
	UNIT_EXP_LEVELS = {0.02, 0.04, 0.06, 0.08, 0.1, 0.14, 0.18, 0.22, 0.26, 0.3, 0.39, 0.48, 0.57, 0.66, 0.75, 0.78, 0.81, 0.84, 0.87, 0.9},
	ARMY_EXP_BASE_LEVEL = 5,
	TRAINING_MAX_LEVEL = 10,

	MAX_ARMY_EXPERIENCE = 999, -- Max army experience a country can store
	MAX_NAVY_EXPERIENCE = 999, -- Max navy experience a country can store
	MAX_AIR_EXPERIENCE = 999,  -- Max air experience a country can store

	EXPERIENCE_COMBAT_FACTOR = 0.03,
	FIELD_MARSHAL_DIVISIONS_CAP = 32,
	RECON_SKILL_IMPACT = 6,
	
	BASE_DIVISION_BRIGADE_GROUP_COST = 8, -- Base cost to unlock a regiment slot,
	BASE_DIVISION_BRIGADE_CHANGE_COST = 4, -- Base cost to change a regiment column.
	BASE_DIVISION_SUPPORT_SLOT_COST = 10,

	BASE_LEADER_TRAIT_GAIN_XP = 0.7,
	UNIT_EXPERIENCE_PER_COMBAT_HOUR = 0.000175,
	FIELD_EXPERIENCE_MAX_PER_DAY = 12,
	ENCIRCLED_DISBAND_MANPOWER_FACTOR = 0.1,
	PLAYER_ORDER_PLANNING_DECAY = 0.005,
	DISBAND_MANPOWER_LOSS = 0.0,
	PLAN_SPREAD_ATTACK_WEIGHT = 4.1, --AI should concentrate forces more, a bit experimental. Increased from 4.0 to combat issues with AI death stacks - SpicyAlfredo
	
	FIELD_MARSHAL_XP_RATIO = 0.7,
	COMMANDER_LEVEL_UP_STAT_WEIGHTS = {5, 5, 3, 4},
	NEW_COMMANDER_RANDOM_PERSONALITY_TRAIT_CHANCES = { -- Chances to gain a personality trait for new generals
		0.80, --50% for first trait
		0.40, --15% for second trait after that
		0.05, 
		0.01,
	},
	
	PLANNING_DECAY = 0.04,
	PLANNING_GAIN = 0.08,
	
	-- PLAN_SPREAD_ATTACK_WEIGHT = 6.0,
	BASE_DIVISION_BRIGADE_CHANGE_COST = 4,	-- was 4 before... - Fantom
	--This is a Trace to make sure mod is taken into account
	
	PLAN_PROVINCE_BASE_IMPORTANCE = 2.0,
	PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 2.0,
	PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0, --Vanilla 5
	PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 12.0, -- Was 20, vanilla 10 lowered to 12 to swap importance of naval base
	PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0,
	PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 6.0,
	PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 8.0,
	PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0,
	PLAN_MAX_PROGRESS_TO_JOIN = 0.60,
	
	-- Addition with 1.3.2
	PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 18.0,		-- increased from 12.0 ; Added importance for area defense province with a port
	PLAN_PORVINCE_PORT_LEVEL_FACTOR = 0.5,			-- Bonus factor for port level
	PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0,	-- Added importance for area defense province with air field
	PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5,	-- Bonus factor when an airfield has planes on it
	PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25,		-- Bonus factor for airfield level
	PLAN_PORVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0, -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)
		
	PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0,	-- Score applied to provinces in the defense area order controlled by enemies
	PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -1.5,		-- Factor applied to province score in area defense order per enemy unit in that province
	PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.30,			-- Used when calculating the calue of defense area provinces for the battle plan system, works as multipliers on the rest
	PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 5.0,	-- Used when calculating the calue of defense area provinces for the battle plan system
	PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 2.0,	-- Used when calculating the calue of defense area provinces for the battle plan system
	
	PLAN_STICKINESS_FACTOR = 95.0,					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
	PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1,			-- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.
	
	PLAN_EXECUTE_CAREFUL_LIMIT = 6.0,				-- reduced from 25 ; When looking for an attach target, this score limit is required in the battle plan to consider province for attack
	PLAN_EXECUTE_BALANCED_LIMIT = 0,				-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
	PLAN_EXECUTE_RUSH = -200,						-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
	PLAN_EXECUTE_CAREFUL_MAX_FORT = 4,				-- reduced from 5 ; If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this
	
	PLAN_MAX_PROGRESS_TO_JOIN = 0.54,				-- increased from 0.50 ; If Lower progress than this, probably needs support
	
	PLAN_BLITZ_OPTIMISM = 0.3,						-- increased from 0.2 ; Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)

	BASE_CAPTURE_EQUIPMENT_RATIO = 0.02,				-- after a successful land combat, ratio of the equipments that are being captured/salvaged from enemy's lost equipment

	
	NEW_COMMANDER_RANDOM_BASIC_TRAIT_CHANCES = {  -- chances to gain a basic trait for new generals
	},
	
	NEW_COMMANDER_RANDOM_STATUS_TRAIT_CHANCES = {  -- chances to gain a status trait for new generals
	},
	
	NEW_COMMANDER_RANDOM_SKILL_CHANCES = {  -- chances to give a random stat skill for new generals
	},

	NEW_NAVY_LEADER_RANDOM_SKILL_CHANCES = { -- chances to give a random stat skill point for a new admiral
	},

},

NAir = {
	AIR_WING_XP_LEVELS = {20, 40, 60, 80, 100, 140, 180, 220, 260, 300, 390, 480, 570, 660, 750, 780, 810, 840, 870, 900},
	AIR_WING_XP_TRAINING_MAX = 300.0,
	AIR_WING_XP_TRAINING_MISSION_GAIN_DAILY = 4.5,
	AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.01,
	AIR_WING_XP_LOSS_WHEN_KILLED = 200,
	AIR_WING_MAX_STATS_ATTACK = 1000, -- Max stats was 200
	AIR_WING_MAX_STATS_DEFENCE = 1000, -- was 200
	AIR_WING_MAX_STATS_AGILITY = 1000, -- was 200
	AIR_WING_MAX_STATS_SPEED = 9999, -- Used to balance the damage done while bombing. was 1500
	AIR_WING_XP_LOSS_REDUCTION_OVER_FRIENDLY_TERRITORY_FACTOR = 0.7,
	
	
	AIR_WING_ATTACK_LOGISTICS_NO_TRUCK_DISRUPTION_FACTOR = 0.05, --0.2 was 0.1 Base 0.02
	AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.27, -- 0.5 was 0.25 Base 0.27
	AIR_WING_ATTACK_LOGISTICS_INFRA_DAMAGE_SPILL_FACTOR = 0.0012, --Base 0.0016
	AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.05, -- was 0.0375 Base 0.075
	AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_DISRUPTION_MITIGATION = 6.0, -- 6.0 Multiply Train Damage by (Smooth / (Smooth + (Disruption * Mitigation)))
	AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_DISRUPTION_SMOOTHING = 5, -- 5
	AIR_WING_ATTACK_LOGISTICS_RAILWAY_DAMAGE_SPILL_FACTOR = 0.003, -- 0.006
	AIR_WING_ATTACK_LOGISTICS_DISRUPTION_MIN_DAMAGE_FACTOR = 0.05, -- 0.1 Multiply train damage by this factor, scale from 1.0 at 0 disruption to this at AIR_WING_ATTACK_LOGISTICS_MAX_DISRUPTION_DAMAGE_TO_CONSIDER
	AIR_WING_ATTACK_LOGISTICS_MAX_DISRUPTION_DAMAGE_TO_CONSIDER = 7.5, -- 15 Base
	AIR_WING_ATTACK_LOGISTICS_DIRECT_DISRUPTION_DAMAGE_FACTOR = 0.05, -- 0.01
	AIR_WING_ATTACK_LOGISTICS_TRUCK_MAX_FACTOR = 0.3, -- was 0.03 Base 0.3
	
	MISSION_COMMAND_POWER_COSTS = { -- command power cost per plane to create a mission
			0.0, -- AIR_SUPERIORITY
			0.0, -- CAS
			0.0, -- INTERCEPTION
			0.0, -- STRATEGIC_BOMBER
			0.0, -- NAVAL_BOMBER
			0.0, -- DROP_NUKE
			0.0, -- PARADROP
			0.0, -- NAVAL_KAMIKAZE
			0.0, -- PORT_STRIKE
			0.0, -- ATTACK_LOGISTICS
			0.025, -- AIR_SUPPLY --Was 0.05
			0.0, -- TRAINING
			0.0, -- NAVAL_MINES_PLANTING
			0.0, -- NAVAL_MINES_SWEEPING
			0.0, -- MISSION_RECON
			0.0, -- NAVAL_PATROL
		},
		
	NAVAL_STRIKE_AIR_VS_AIR_PASS_CHANCE = 25.0,
},

NAI = {

--------------------------------------------------------------------------------------------------------------
-- RESEARCH
--------------------------------------------------------------------------------------------------------------
	RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1,
	RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0,	-- Multiplies value based on relative military industry size / country size.
	RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0,	-- Multiplies value based on relative naval industry size / country size.
	RESEARCH_AIR_DOCTRINE_NEED_GAIN_FACTOR = 0,		-- Multiplies value based on relative number of air base / country size.
	
	MAX_AHEAD_RESEARCH_PENALTY = 5,
	RESEARCH_NEW_WEIGHT_FACTOR = 0.5, 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
	RESEARCH_BONUS_FACTOR = 3, 				-- To which extent AI should care about bonuses to research
	RESEARCH_AHEAD_OF_TIME_FACTOR = 2.0, 		-- To which extent AI should care about ahead of time penalties to research
	RESEARCH_BASE_DAYS = 30,					-- Vanilla 60, AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs	
	XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0,

--------------------------------------------------------------------------------------------------------------
-- DESIGN
--------------------------------------------------------------------------------------------------------------
	DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_LAND = 199, --10	-- Army XP needed before attempting to create a variant of a type that uses the legacy upgrades system. ai_strategy supports land_xp_spend_priority upgrade_xp_cutoff. If none is set this define is used instead.
	DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_NAVY = 49, --25	-- Same as above but for navy XP and navy_xp_spend_priority.
	DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_AIR  = 199, --25	-- Same as above but for air XP and air_xp_spend_priority.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role, the highest priority AI design that can be
-- created, if any, is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

-- EAI: AI delays upgrading the main tank types too much because it wants to create absent types for its templates first
-- makes sense but I'd rather have it get its most used type upgraded first
	LAND_DESIGN_ALTERNATIVE_ABSENT = 1, --1000000
	LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 1, --10000
	LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 1, --100
	LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1,

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met, e.g. it's both in the field and in training, the largest value is used.

	LAND_DESIGN_DEMAND_FIELD_DIVISION = 50,
	LAND_DESIGN_DEMAND_TRAINING_DIVISION = 50,
	LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10,
	LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 10, --1
	LAND_DESIGN_DEMAND_ABSENT = 10, --0
	
-- The AI "desires" to spend XP on doctrines, templates, and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset, in effect balancing the desires.
-- Below is the daily desire gain for each action.

	DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 1,    -- How quickly is desire to unlock land doctrines accumulated?
	DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 1,   -- How quickly is desire to unlock naval doctrines accumulated?
	DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 1,    -- How quickly is desire to unlock air doctrines accumulated?

--EAI: make sure land template desire is always at the top, if the doctrine desire is high but the mod blocks it, AI wont create templates
	DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0, --2.0    -- How quickly is desire to update/create templates accumulated?
	
	DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 2.0,  -- How quickly is desire to update/create land equipment variants accumulated?
	DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 100.0, -- How quickly is desire to update/create naval equipment variants accumulated?
	DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 100.0,  -- How quickly is desire to update/create air equipment variants accumulated?
	
	DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.4,    -- How quickly is desire to unlock army spirits accumulated?
	DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.4,   -- How quickly is desire to unlock naval spirits accumulated?
	DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.4,    -- How quickly is desire to unlock air spirits accumulated?
	
	DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7,       -- Recalculate desired best doctrine to unlock with this many days inbetween.
	DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 7,       -- Recalculate desired best template to upgrade with this many days inbetween.
	DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 7,      -- Recalculate desired best equipment to upgrade with this many days inbetween.
	
	GARRISON_TEMPLATE_SCORE_IC_FACTOR = 1.0, -- ai uses these defines while calculating garrison template score of a template.
	GARRISON_TEMPLATE_SCORE_MANPOWER_FACTOR = 0.05, -- formula is (template_ic * ic_factor + template_manpower * manpower_factor ) / template_supression (lower is better)	

	DIVISION_UPGRADE_MIN_XP = 100,				-- Instead of 200, Minimum XP before attempting to upgrade a division template.
	DIVISION_CREATE_MIN_XP = 100,				-- Instead of 150, Minimum XP before attempting to create a fresh new division template.
	VARIANT_UPGRADE_MIN_XP = 100,				-- Instead of 150, Minimum XP before attempting to create a new variant.
	UPGRADE_XP_RUSH_UPDATE = 150,				-- Instead of 200, If XP is above this on the daily tick the AI will attempt to spend it
	
--------------------------------------------------------------------------------------------------------------
-- DIVISION PRODUCTION
--------------------------------------------------------------------------------------------------------------
	DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.5,     -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
	DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8,   -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
	DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.4,        -- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
	DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9,       -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
	DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.9,          -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
	DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.9,         -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
	DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85,  -- If training is capped by equipment deficit and we have reached that cap, deploy unit anyway if percentage is above this (reinforce in field instead).
		
	ENTRENCHMENT_WEIGHT = 50.0,
	AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.50,
	MAIN_ENEMY_FRONT_IMPORTANCE = 50.0,
	RESERVE_TO_COMMITTED_BALANCE = 0.2,
	FRONT_REASSIGN_DISTANCE = 250.0,
	ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8,			-- reduced from 1.0 ; AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)
	HOUR_BAD_COMBAT_REEVALUATE = 90,                  -- reduced from 168 ; if we are in combat for this amount and it goes shitty then try skipping it 
	ORG_UNIT_WEAK = 0.30, -- Instead of 0.15, should optimize usage of troops
	STR_UNIT_WEAK = 0.30, -- Instead of 0.15, should optimize usage of troops
	ORG_UNIT_STRONG = 0.80,
	UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 20.0, -- Instead of 10, should improve terrain optimization

--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------

	WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 365,  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer 
	WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 365,  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
	WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 365,  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer

--------------------------------------------------------------------------------------------------------------
-- DIPLOMACY
--------------------------------------------------------------------------------------------------------------
	
	DIPLOMATIC_ACTION_GOOD_BAD_RATIO_THRESHOLD = 1,
	BASE_RELUCTANCE = 15, 						-- (Original value: 20) Base reluctance applied to all diplomatic offers
	DIPLOMATIC_ACTION_RANDOM_FACTOR = 0.5, 		-- How much of the AI diplomatic action scoring is randomly determined (1.0 = half random, 2.0 = 2/3rd random, etc)
	DIPLOMATIC_ACTION_PROPOSE_SCORE = 50, 		-- AI must score a diplomatic action at least this highly to propose it themselves
	DILPOMATIC_ACTION_DECLARE_WAR_WARGOAL_BASE = 50, -- Base diplomatic action score bonus to go to war per wargoal
	DIPLOMATIC_ACTION_BREAK_SCORE = -50, 		-- (Original value: -10) AI must score a diplomatic action less than this to break it off	
	DIPLOMACY_CREATE_FACTION_FACTOR = 0.75,		-- Factor for AI desire to create a new faction. Val < 1.0 makes it less likely to create than to join.
	DIPLOMACY_FACTION_WRONG_IDEOLOGY_PENALTY = 95, -- AI penalty for diplomatic faction acitons between nations of different ideologies
	DIPLOMACY_FACTION_SAME_IDEOLOGY_MAJOR = 50, -- (Original value: 15) AI bonus acceptance when being asked about faction is a major of the same ideology
	DIPLOMACY_FACTION_NEUTRALITY_PENALTY = 50,	-- Neutral nations have a separate penalty, not wanting to get involved at all, rather than caring much about the difference in ideology
	DIPLOMACY_FACTION_GLOBAL_TENSION_FACTOR = 0.2,-- How much the AI takes global tension into account when considering faction actions
	TENSION_DECAY = 0.25,							-- (Original value: 0.15) Each months tension decays this much. Base was 0.1
	DIPLOMACY_FACTION_WAR_RELUCTANCE = -50,		-- Penalty to desire to enter a faction with a country that we are not fighting wars together with.
	DIPLOMACY_FACTION_TAKE_OVER_RELUCTANCE_VERSUS_HUMAN = 2.0,	-- Multiplier penalty for how much stronger than a human faction member an AI country must be to choose to assume faction leadership.
	DIPLOMACY_SCARED_MINOR_EXTRA_RELUCTANCE = -50, -- extra reluctance to join stuff as scared minor
	DIPLOMACY_FACTION_PLAYER_JOIN = 20,			-- Bonus for human players asking to join a faction.
	DIPLOMACY_BOOST_PARTY_COST_FACTOR = 100.0,	-- Desire to boost party popularity subtracts the daily cost multiplied by this
	DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 7.0,-- Desire to boost relations subtracts the cost multiplied by this
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
	GENERATE_WARGOAL_THREAT_BASELINE = 0.6,
	LENDLEASE_FRACTION_OF_PRODUCTION = 0.25, --0.5
	LENDLEASE_FRACTION_OF_STOCKPILE = 0.125, --0.25
	
	FASCISTS_ALLY_DEMOCRACIES = -150,
	FASCISTS_ALLY_COMMUNISTS = -150,
	COMMUNISTS_ALLY_FASCISTS = -150,
	DEMOCRACIES_ALLY_COMMUNISTS = -75,
	COMMUNISTS_ALLY_DEMOCRACIES = -75,
	
	PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.15,	-- Base value for how much of currently used equipment the AI will at least strive to have in stock
	
--------------------------------------------------------------------------------------------------------------
-- ECONOMY
--------------------------------------------------------------------------------------------------------------

	BUILDING_TARGETS_BUILDING_PRIORITIES = {				-- buildings in order of pirority when considering building targets strategies. First has the greatest priority, omitted has the lowest. NOTE: not all buildings are supported by building targets strategies.
		'synthetic_refinery',
		'fuel_silo',
		'industrial_complex',
		'arms_factory',
		'infrastructure',
		'dockyard',
		'air_base',
		'synthetic_refinery',
		'radar_station',
		'nuclear_reactor',
	},
	
--------------------------------------------------------------------------------------------------------------
-- FRONT CONTROL/ARMY
--------------------------------------------------------------------------------------------------------------	

	MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 2.0,	-- How many units should we have for each tile along a front in order to switch to standard cohesion (less moving around)
	MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 2000,	-- How long should fronts be before we consider switching to standard cohesion (under this, standard cohesion fronts will switch back to relaxed)

	ASSIGN_TANKS_TO_WAR_FRONT = 8.0, --4.0
	ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.2, --0.4
	
	PLAN_EXECUTE_RUSH = -10,
	PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85,							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
	PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85,						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan
	PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65,							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
	PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65,	
	PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5,		
	PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5,
	PLAN_FACTION_STRONG_TO_EXECUTE = 0.65, --0.80	0.60		        -- % or more of units in an order to consider ececuting the plan	
	
	PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1,		                    -- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
	PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1, 		                -- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)

	FALLBACK_LOSING_FACTOR = 0.0,
	PLAN_MIN_SIZE_FOR_FALLBACK = 5000,					                -- A country with less provinces than this will not draw fallback plans  but rather station their troops along the front

-- these are all 3 numbers for min, desired, max unit need weights for area defense
	AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 1.0, 1.0, 1.0 },
	AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.0, 1.0, 2.0 },
	AREA_DEFENSE_HOME_VP_WEIGHT = { 0.0, 0.5, 1.0 },
	AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.0, 1.0 },

	AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.0, 0.0 },
	AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.0, 0.2, 0.7 },
	AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.0, 0.1, 0.5 },
	AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.0, 0.0, 0.0 },

	AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.0, 0.0, 0.0 },
	AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.5, 1.0, 1.5 },
	AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.5, 1.0, 1.0 },
	AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.5, 0.5, 1.0 },


	ORG_UNIT_WEAK = 0.4,						-- Organization % for unit to be considered weak
	STR_UNIT_WEAK = 0.4,					-- Strength (equipment) % for unit to be considered weak
	
	ORG_UNIT_NORMAL = 0.7,						-- Organization % for unit to be considered normal
	STR_UNIT_NORMAL = 0.7,						-- Strength (equipment) % for unit to be considered normal
	
	ORG_UNIT_STRONG = 0.80,
	
	ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8,			-- reduced from 1.0 ; AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)
	
	MAX_ALLOWED_NAVAL_DANGER = 51,				-- AI will ignore naval paths that has danger value of above this threshold while assigning units
	
	DESPERATE_AI_WEAK_UNIT_STR_LIMIT = 0.1,					-- ai will increase number of units assigned to break from desperate situations when units are start falling lower than this str limit
	DESPERATE_AI_MIN_ORG_BEFORE_ATTACK = 0.85,					-- ai will wait for this much org to attack an enemy prov in desperate situations
	DESPERATE_AI_MIN_ORG_BEFORE_MOVE = 0.25,				-- ai will wait for this much org to move in desperate situations
	DESPERATE_ATTACK_WITHOUT_ORG_WHEN_NO_ORG_GAIN = 175,		-- if ai can't regain enough org to attack in this many hours, it will go truly desperate and attack anyway (still has to wait for move org)
	
	WANTED_UNITS_MANPOWER_DIVISOR = 22000,
	
	DIVISION_DESIGN_WEIGHTS = {							-- Base values used by AI to evaluate value of a stat
		--Army Values
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
		--Navy Values
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
		--Air Values
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
		--Common Values
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
		--Special Values
		0.0, -- strategic_attack
		0.0, -- carrier_size
		0.0, -- acclimatization hot gain
		0.0, -- acclimatization cold gain
		0.0, -- night_penalty
		-0.5, -- build_cost_ic
	},
	
	
	MAX_UNITS_FACTOR_INVASION_ORDER = 1.0,				-- Factor for max number of units to assign to naval invasion orders
	DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0,			-- Factor for desired number of units to assign to naval invasion orders
	MIN_UNITS_FACTOR_INVASION_ORDER = 0.5,				-- Factor for min number of units to assign to naval invasion orders #was 1.0 should reduce low unit number naval invasions
	
	NEW_LEADER_EXTRA_PP_FACTOR = 1,					-- Country must have at least this many times extra PP to get new admirals or army leaders #Was 2.0
	ATTACK_HEAVILY_DEFENDED_LIMIT = 0.7,				-- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%) #was 0.5
	HOUR_BAD_COMBAT_REEVALUATE = 24,                  -- if we are in combat for this amount and it goes shitty then try skipping it #was 100
	
	PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0.1,	-- Is modified by efficency modifiers.
	PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 2.0,			-- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
	PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 2.0,		-- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)
	AREA_DEFENSE_BASE_IMPORTANCE = 4,					-- Area defense order base importance value (used for determining order of troop selections)
	
	ALLY_SUPPLY_RATIO_FOR_UNIT_PRODUCTION = 0.00,		-- supply ratio of ally supply chunks will be added to our own supply chunks (since we will fight around allies as well) modified by produce_unit_for_ally_supply_chunks strat
	
	
	XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 1.5,		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP #BASE WAS 2.0	
	
	FRONT_EVAL_UNIT_ACCURACY = 1.0,                          -- scale how stupid ai will act on fronts. 0 is potato #BASE WAS 0.7
	
	MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 35,	-- if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front	

	GARRISON_FRACTION = 0.01, 					-- How large part of a front should always be holding the line rather than advancing at the enemy

--------------------------------------------------------------------------------------------------------------
-- NAVY
--------------------------------------------------------------------------------------------------------------
	NAVY_PREFERED_MAX_SIZE = 50.0, -- Upgraded from 20.0
	MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.10, -- maximum ratio of screens forces to be used in mine sweeping
	MISSING_CONVOYS_BOOST_FACTOR = 0.0,
	CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 6, 		-- optimum capital count for capital taskforces
	SCREEN_TASKFORCE_MAX_SHIP_COUNT = 8,			-- optimum screen count for screen taskforces
	SUB_TASKFORCE_MAX_SHIP_COUNT = 10, 				-- optimum sub count for sub taskforces	

	MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		200, -- PATROL		
		200, -- STRIKE FORCE 
		200, -- CONVOY RAIDING
		100, -- CONVOY ESCORT
		200, -- MINES PLANTING	
		100, -- MINES SWEEPING	
		0, -- TRAIN
		0, -- RESERVE_FLEET
		100, -- NAVAL INVASION SUPPORT
	},
	
	HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		3800, -- PATROL - 100000	
		1000, -- STRIKE FORCE 
		1500, -- CONVOY RAIDING
		3000, -- CONVOY ESCORT - 1000
		-1, -- MINES PLANTING	
		300, -- MINES SWEEPING	
		0, -- TRAIN
		0, -- RESERVE_FLEET
		1000, -- NAVAL INVASION SUPPORT
	},

	MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		1.5, -- PATROL		
		6, -- STRIKE FORCE 
		1.5, -- CONVOY RAIDING
		2, -- CONVOY ESCORT
		2, -- MINES PLANTING
		2, -- MINES SWEEPING
		0, -- TRAIN
		0, -- RESERVE_FLEET
		10, -- NAVAL INVASION SUPPORT
	},

-------------------------
-- NAVAL INVASIONS
-------------------------
	ENEMY_NAVY_STRENGTH_DONT_BOTHER = 5,		
	RELATIVE_STRENGTH_TO_INVADE = 0, --0.08			-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend.
	RELATIVE_STRENGTH_TO_INVADE_DEFENSIVE = 0, --0.4	-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend, but while being a defensive country.
	INVASION_DISTANCE_RANDOMNESS = 300,					-- This higher the value, the more unpredictable the invasions. Compares to actual map distance in pixels. #BASE WAS 300
	INVASION_COASTAL_PROVS_PER_ORDER = 12,				-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
	MAX_DISTANCE_NAVAL_INVASION = 600.0,				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.
	MAX_INVASION_SIZE = 18, --24									-- max invasion group size
	
-------------------------
-- AIR AI
-------------------------
	PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 0.75, --1.5				-- in additiona to total deck size of carriers, we want at list this ratio to buffer it
	MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 1,
	LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 1000,		-- Strategic importance of our armies in the combats
	LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 1,		-- Amount of air interceptor planes requested per enemy bomber
	LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 800, -- 50			-- Strategic importance of civil factories
	LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 880, -- 70		-- Strategic importance of military factories
	LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 420, -- 30			-- Strategic importance of naval factories

	STR_BOMB_PLANES_PER_CIV_FACTORY = 200,				-- Amount of planes requested per enemy civ factory
	STR_BOMB_PLANES_PER_MIL_FACTORY = 200,				-- Amount of planes requested per enemy military factory
	STR_BOMB_PLANES_PER_NAV_FACTORY = 100,				-- Amount of planes requested per enemy naval factory
	STR_BOMB_PLANES_PER_SUPPLY_HUB = 30,                 -- Amount of planes requested per enemy supply node

	NAVAL_STRIKE_PLANES_PER_SHIP = 40,					-- Amount of bombers requested per enemy ship
	NAVAL_SHIP_AIR_IMPORTANCE = 10000, --2.0					-- Naval ship air importance
	NAVAL_IMPORTANCE_SCALE = 2, --0.65						-- Naval total importance scale (every naval score get's multiplied by it)

	NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 20, --10.0		-- Amount of naval patrol planes per ship on a patrol mission
	NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40, --10.0		-- Amount of naval patrol planes per ship on a convoy raid mission
	NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 20, --10.0		-- Amount of naval patrol planes per ship on a convoy escort mission

--------------------------------------------------------------------------------------------------------------
-- PP
--------------------------------------------------------------------------------------------------------------
	
	COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 65.0,

},

NFocus = {
	MAX_SAVED_FOCUS_PROGRESS = 14,				-- This much progress can be saved while not having a focus selected
},

NOperatives = {
	OPERATIVE_MISSION_DETECTION_CHANCE_FACTOR = {
		-- Factor multiplied to the detection chance of an agent on mission before the offsets
		0.0, -- NoMission
		1.0, -- BuildIntelNetwork
		0.95, -- QuietIntelNetwork
		1.0, -- CounterIntelligence
		0.0, -- RootOutResistance
		2.0, -- BoostIdeology
		0.1, -- ControlTrade
		0.1, -- DiplomaticPressure
		2.0, -- Propaganda
	},

	BOOST_IDEOLOGY_NATIONAL_COVERAGE_FACTOR = 1.0,				-- used to compute the drift factor as follow: BASE * SUB_NETWORK_NC * BOOST_IDEOLOGY_DEFENSE_FACTOR
	BOOST_IDEOLOGY_MAX_DRIFT_BY_OPERATIVE = 0.3,				-- the maximum drift an operative can cause, a negative value means no maximum
	BOOST_IDEOLOGY_DRIFT_STACKING_FACTOR = 0.75,				-- multiplied to the drift of an operative for each operative after the first one, with the greatest drift. So if we have the following drift values [ 0.1, 0.3, 0.2 ], the factor is applied twice for the lowest value and once for the 2nd lowest one as such : [ 0.3, 0.2 * D, 0.1 * D * D ] and then the result is summed up to give the final drift value.
	BOOST_IDEOLOGY_DEFENSE_FACTOR = 0.2,					-- multiplied to the target's defense to get the amount of drift to remove from each operative's drift
	BOOST_IDEOLOGY_DAILY_XP_GAIN = 0.275,
	OPERATIVE_BASE_BOOST_IDEOLOGY = 0.15,

	
	COUNTER_INTELLIGENCE_FOREIGN_AGENT_FACTOR = 1.1,			-- Multiplier to the counter intelligence provided by foreign (ally) operatives

	ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_XP_GAIN = 125,					-- Xp gain when an enemy operative is captured in the country the operative is assigned to counter intelligence to. Apply to a single randomly selected operative
	ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_WEIGHT_OWN_COUNTRY_FOR_XP = 3,			-- An integer on how likely an operative operating in his own country is to get selected for the xp reward on enemy operative capture
	ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_WEIGHT_DIFFERENT_COUNTRY_FOR_XP = 1,		-- same for an operative assigned to counter intelligence in a different country than his own

	OPERATION_COMPLETION_XP = 75,			-- XP given on completion of a mission. Was 18!
	DIPLOMATIC_PRESSURE_DAILY_XP_GAIN = 0.155, 			-- Daily XP given doing Diplomatic Pressure mission was 0.137
	COUNTER_INTELLIGENCE_DAILY_XP_GAIN = 0.115, 		-- Daily XP given doing counter intelligence mission was 0.112
	QUIET_INTEL_NETWORK_DAILY_XP_GAIN = 0.1,  		-- Daily XP given doing quiet intel network mission was 0!
	BUILD_INTEL_NETWORK_DAILY_XP_GAIN = 1.25,  		-- was 1.0
},

NTechnology = {
	BASE_TECH_COST = 80,
	BASE_YEAR_AHEAD_PENALTY_FACTOR = 2, -- Base year ahead penalty, from 2
	BASE_RESEARCH_POINTS_SAVED = 56.0, --#base game 30 changed to 50 and then why not 56?
	
},

NSupply = { -- Supply Abbus: It punish less compare to vanilla
	INFRA_TO_SUPPLY = 0.5  -- 0.3
	VP_TO_SUPPLY_BASE = 0.1 --0.2
	VP_TO_SUPPLY_BONUS_CONVERSION = 0.06 --0.05
	
	CAPITAL_SUPPLY_BASE = 5.0 -- 5.0
	CAPITAL_SUPPLY_CIVILIAN_FACTORIES = 0.5 -- 0.3
	CAPITAL_SUPPLY_MILITARY_FACTORIES = 0.7 -- 0.6
	CAPITAL_SUPPLY_DOCKYARDS = 0.6 -- 0.4
	
	CAPITAL_INITIAL_SUPPLY_FLOW = 10.0 -- 5.0
	CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.5 -- 0.5
	CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.8 -- 1.2
	NODE_INITIAL_SUPPLY_FLOW = 4.0 -- 2.8
	NODE_STARTING_PENALTY_PER_PROVINCE = 0.50 -- 0.50
	NODE_ADDED_PENALTY_PER_PROVINCE = 1.0 -- 0.70
	NAVAL_BASE_INITIAL_SUPPLY_FLOW = 4.0 -- 3.5
	NAVAL_BASE_STARTING_PENALTY_PER_PROVINCE = 0.8 -- 0.8
	NAVAL_BASE_ADDED_PENALTY_PER_PROVINCE = 1.5 --1.0
	
	FLOATING_HARBOR_BASE_SUPPLY = 30 -- 15
	FLOATING_HARBOR_BASE_DURATION = 60 -- 21
	FLOATING_HARBOR_INITIAL_SUPPLY_FLOW = 13 -- 2.6
	FLOATING_HARBOR_STARTING_PENALTY_PER_PROVINCE = 1.6 -- 0.8
	FLOATING_HARBOR_ADDED_PENALTY_PER_PROVINCE = 5 -- 0.8
	
	
	SUPPLY_FLOW_DROP_REDUCTION_AT_MAX_INFRA = 0.60 -- 0.30
	
	SUPPLY_HUB_FULL_MOTORIZATION_BONUS = 4.0 -- 2.2
	
	
	RAILWAY_BASE_FLOW = 10.0 -- 10.0
	RAILWAY_FLOW_PER_LEVEL = 10 --5.0
	RAILWAY_FLOW_PENALTY_PER_DAMAGED = 10 -- 5.0
	
	
	NODE_FLOW_BONUS_PER_RAIL_LEVEL = 0.8 -- 0.34
	
	
	NAVAL_FLOW_PER_LEVEL = 15.0 -- 15.0
	NAVAL_FLOW_PER_LEVEL = 5.0 --5.0
	
	
	SUPPLY_PATH_MAX_DISTANCE = 15 --15
	RAILWAY_DISTANCE_FACTOR_FOR_REINFORCEMENT_SPEED = 0.1 --0.3
	SUPPLY_DISRUPTION_DAILY_RECOVERY = 3.0
},

	NMilitary.SUPPLY_GRACE = 84, -- 72, 3 days as they say and remain hungry for another 12
	NBuildings.SUPPLY_PORT_LEVEL_THROUGHPUT = 3, -- 3
	
	NNavy.SUPPLY_NEED_FACTOR = 3, -- 4
	NAir.SUPPLY_NEED_FACTOR = 0.15, -- 0.28

NGraphics = {
	COUNTRY_FLAG_TEX_MAX_SIZE = 2048,
	COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512,
	COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10,
	COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 8196,
	COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41,
	COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 24000,
	VICTORY_POINT_MAP_ICON_AFTER = {0, 20}, -- After this amount of VP the map icon becomes bigger dot.
	VICTORY_POINT_MAP_ICON_TEXT_CUTOFF = {200, 500, 750}, -- At what camera distance the VP name text disappears.
	VICTORY_POINTS_DISTANCE_CUTOFF = {300, 750, 1000}, -- At what distance VPs are hidden
	RAILWAY_MAP_ARROW_COLOR_DEFAULT = { 0, 128, 0, 1.0 }, -- green, default railway maparrow color
	RAILWAY_MAP_ARROW_THIN_LEVEL_THRESHOLD = 1, -- Railway level 1 uses thin map arrow in supply map mode
	RAILWAY_MAP_ARROW_MEDIUM_LEVEL_THRESHOLD = 5, -- Railway level 2-3 uses medium map arrow in supply map mode
	RAILWAY_MAP_ARROW_THICK_LEVEL_THRESHOLD = 9, -- Railway level 4-5 uses thick map arrow in supply map mode
},
}