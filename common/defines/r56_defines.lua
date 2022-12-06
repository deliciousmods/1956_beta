
NDefines.NGame.END_DATE = "1956.1.1.1" -- we are called r56 for a reason!

NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048
NDefines.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 8196
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 24000
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_AFTER = {0, 20} -- After this amount of VP the map icon becomes bigger dot.
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF = {200, 500, 750} -- At what camera distance the VP name text disappears.
NDefines.NGraphics.VICTORY_POINTS_DISTANCE_CUTOFF = {300, 750, 1000} -- At what distance VPs are hidden
NDefines.NGraphics.RAILWAY_MAP_ARROW_COLOR_DEFAULT = { 0, 128, 0, 1.0 } -- green, default railway maparrow color
NDefines.NGraphics.RAILWAY_MAP_ARROW_THIN_LEVEL_THRESHOLD = 1 -- Railway level 1 uses thin map arrow in supply map mode
NDefines.NGraphics.RAILWAY_MAP_ARROW_MEDIUM_LEVEL_THRESHOLD = 5 -- Railway level 2-3 uses medium map arrow in supply map mode
NDefines.NGraphics.RAILWAY_MAP_ARROW_THICK_LEVEL_THRESHOLD = 9 -- Railway level 4-5 uses thick map arrow in supply map mode
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
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 999 -- Max army experience a country can store
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 999 -- Max navy experience a country can store
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 999  -- Max air experience a country can store
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

NDefines.NMilitary.PLANNING_DECAY = 0.04
NDefines.NMilitary.PLANNING_GAIN = 0.08

-- NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 6.0
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 4	-- was 4 before... - Fantom
--This is a Trace to make sure mod is taken into account

NDefines.NMilitary.PLAN_PROVINCE_BASE_IMPORTANCE = 2.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 20.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 8.0
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0
NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.60

-- Addition with 1.3.2
NDefines.NMilitary.PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PORVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PORVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)

NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PROVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)


NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0	-- Score applied to provinces in the defense area order controlled by enemies
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -1.5		-- Factor applied to province score in area defense order per enemy unit in that province
NDefines.NMilitary.PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.30			-- Used when calculating the calue of defense area provinces for the battle plan system, works as multipliers on the rest
NDefines.NMilitary.PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 5.0	-- Used when calculating the calue of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 2.0	-- Used when calculating the calue of defense area provinces for the battle plan system

NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 95.0					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1			-- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.

NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_LIMIT = 6.0				-- reduced from 25 ; When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NMilitary.PLAN_EXECUTE_BALANCED_LIMIT = 0				-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NMilitary.PLAN_EXECUTE_RUSH = -200						-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4				-- reduced from 5 ; If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this

NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.54				-- increased from 0.50 ; If Lower progress than this, probably needs support

NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.3						-- increased from 0.2 ; Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)

-- Technology
NDefines.NTechnology.BASE_TECH_COST = 80
NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 3 -- Base year ahead penalty
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 56.0 --#base game 30 changed to 50 and then why not 56?

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

NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_NO_TRUCK_DISRUPTION_FACTOR = 0.1 --0,2
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.25 -- 0,5
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_INFRA_DAMAGE_SPILL_FACTOR = 0.0008 --0,0016
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.0375 -- 0,075
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_DISRUPTION_MITIGATION = 6.0 -- 6.0 Multiply Train Damage by (Smooth / (Smooth + (Disruption * Mitigation)))
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_DISRUPTION_SMOOTHING = 5 -- 5
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_RAILWAY_DAMAGE_SPILL_FACTOR = 0.003 -- 0,006
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_DISRUPTION_MIN_DAMAGE_FACTOR = 0.05 -- 0,1 Multiply train damage by this factor, scale from 1.0 at 0 disruption to this at AIR_WING_ATTACK_LOGISTICS_MAX_DISRUPTION_DAMAGE_TO_CONSIDER
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_MAX_DISRUPTION_DAMAGE_TO_CONSIDER = 7.5 -- 15 Base
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_DIRECT_DISRUPTION_DAMAGE_FACTOR = 0.05 -- 0,01
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_MAX_FACTOR = 0.03 -- 0.03 vanilla

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
		0.0, -- ATTACK_LOGISTICS
		0.05, -- AIR_SUPPLY
		0.0, -- TRAINING
		0.0, -- NAVAL_MINES_PLANTING
		0.0, -- NAVAL_MINES_SWEEPING
		0.0, -- MISSION_RECON
		0.0, -- NAVAL_PATROL
    }
	
NDefines.NAir.NAVAL_STRIKE_AIR_VS_AIR_PASS_CHANCE = 25.0	

-- Politics
NDefines.NPolitics.ARMY_LEADER_MAX_COST = 75				-- max cost BEFORE modifiers
NDefines.NPolitics.NAVY_LEADER_MAX_COST = 75		
NDefines.NPolitics.DEFAULT_OCCUPATION_POLICY = 1

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


-- AI

NDefines.NAI.ENTRENCHMENT_WEIGHT = 50.0
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.50
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 50.0
NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.2
NDefines.NAI.FRONT_REASSIGN_DISTANCE = 250.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8				-- reduced from 1.0 ; AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 90                   -- reduced from 168 ; if we are in combat for this amount and it goes shitty then try skipping it 
NDefines.NAI.ORG_UNIT_WEAK = 0.30 -- Instead of 0.15, should optimize usage of troops
NDefines.NAI.STR_UNIT_WEAK = 0.30 -- Instead of 0.15, should optimize usage of troops
NDefines.NAI.ORG_UNIT_STRONG = 0.80
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 20.0 -- Instead of 10, should improve terrain optimization

NDefines.NAI.DIVISION_UPGRADE_MIN_XP = 200				-- Minimum XP before attempting to upgrade a division template.
NDefines.NAI.DIVISION_CREATE_MIN_XP = 150				-- Minimum XP before attempting to create a fresh new division template.
NDefines.NAI.VARIANT_UPGRADE_MIN_XP = 150				-- Minimum XP before attempting to create a new variant.
NDefines.NAI.UPGRADE_XP_RUSH_UPDATE = 200				-- If XP is above this on the daily tick the AI will attempt to spend it

NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 50.0 -- Upgraded from 20.0

NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.2 -- Multiplies value based on relative military industry size / country size.
NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.065 -- Multiplies value based on relative naval industry size / country size.
NDefines.NAI.RESEARCH_AIR_DOCTRINE_NEED_GAIN_FACTOR = 0.07 -- Multiplies value based on relative number of air base / country size.
NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_BONUS_FACTOR = 1.3 				-- To which extent AI should care about bonuses to research
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 2.0 		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60					-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs


NDefines.NAI.GARRISON_FRACTION = 0.01 					-- How large part of a front should always be holding the line rather than advancing at the enemy

NDefines.NAI.DIPLOMATIC_ACTION_GOOD_BAD_RATIO_THRESHOLD = 1
NDefines.NAI.BASE_RELUCTANCE = 15 						-- (Original value: 20) Base reluctance applied to all diplomatic offers
NDefines.NAI.DIPLOMATIC_ACTION_RANDOM_FACTOR = 0.5 		-- How much of the AI diplomatic action scoring is randomly determined (1.0 = half random, 2.0 = 2/3rd random, etc)
NDefines.NAI.DIPLOMATIC_ACTION_PROPOSE_SCORE = 50 		-- AI must score a diplomatic action at least this highly to propose it themselves
NDefines.NAI.DILPOMATIC_ACTION_DECLARE_WAR_WARGOAL_BASE = 50 -- Base diplomatic action score bonus to go to war per wargoal
NDefines.NAI.DIPLOMATIC_ACTION_BREAK_SCORE = -50 		-- (Original value: -10) AI must score a diplomatic action less than this to break it off	
NDefines.NAI.DIPLOMACY_CREATE_FACTION_FACTOR = 0.75		-- Factor for AI desire to create a new faction. Val < 1.0 makes it less likely to create than to join.
NDefines.NAI.DIPLOMACY_FACTION_WRONG_IDEOLOGY_PENALTY = 95 -- AI penalty for diplomatic faction acitons between nations of different ideologies
NDefines.NAI.DIPLOMACY_FACTION_SAME_IDEOLOGY_MAJOR = 50 -- (Original value: 15) AI bonus acceptance when being asked about faction is a major of the same ideology
NDefines.NAI.DIPLOMACY_FACTION_NEUTRALITY_PENALTY = 50	-- Neutral nations have a separate penalty, not wanting to get involved at all, rather than caring much about the difference in ideology
NDefines.NAI.DIPLOMACY_FACTION_GLOBAL_TENSION_FACTOR = 0.2-- How much the AI takes global tension into account when considering faction actions
NDefines.NAI.TENSION_DECAY = 0.25							-- (Original value: 0.15) Each months tension decays this much. Base was 0.1
NDefines.NAI.DIPLOMACY_FACTION_WAR_RELUCTANCE = -50		-- Penalty to desire to enter a faction with a country that we are not fighting wars together with.
NDefines.NAI.DIPLOMACY_FACTION_TAKE_OVER_RELUCTANCE_VERSUS_HUMAN = 2.0	-- Multiplier penalty for how much stronger than a human faction member an AI country must be to choose to assume faction leadership.
NDefines.NAI.DIPLOMACY_SCARED_MINOR_EXTRA_RELUCTANCE = -50 -- extra reluctance to join stuff as scared minor
NDefines.NAI.DIPLOMACY_FACTION_PLAYER_JOIN = 20			-- Bonus for human players asking to join a faction.
NDefines.NAI.DIPLOMACY_BOOST_PARTY_COST_FACTOR = 100.0	-- Desire to boost party popularity subtracts the daily cost multiplied by this
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 5.0-- Desire to boost relations subtracts the cost multiplied by this
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_PP_FACTOR = 0.1	-- Desire to boost relations adds total PP multiplied by this
NDefines.NAI.DIPLOMACY_SEND_ATTACHE_COST_FACTOR = 5.0	-- Desire to send attache substracts the cost multiplied by this
NDefines.NAI.DIPLOMACY_SEND_ATTACHE_PP_FACTOR = 0.1	-- Desire to send attache adds total PP multiplied by this
NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 4	-- AI will not repeat offers until at least this time has passed, and at most the double
NDefines.NAI.DIPLOMACY_CALL_ALLY_VALIDITY_DURATION = 1	-- Overwrite above value for CallAlly and JoinAlly diplo action. This is however fixed, and is not subject to randomness. Also, this is the time the AI will keep the action in its incoming queue without declining it.
NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.75			-- Country should not send away more units than this as expeditionaries
NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 50		-- Base value of volunteer acceptance (help is welcome)
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_BASE = 50			-- Base value of attache acceptance (help is welcome)
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_TRASHHOLD = 20 -- Value of opinion that will remove accepting penalty for receiveing the attache
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_PENALTY = -100 -- Value of acceptance penalty if the opinion too low 
NDefines.NAI.DIPLOMACY_FACTION_MAJOR_AT_WAR = 1000.0	-- Factor that will be multiplied with the surrender level in the desire to offer to the other ai to join a faction
NDefines.NAI.DIPLOMACY_FACTION_SURRENDER_LEVEL = 20 	-- How much the recipient nation losing matters for joining a faction
NDefines.NAI.DIPLO_PREFER_OTHER_FACTION = -200			-- The country has yet to ask some other faction it would prefer to be a part of.

NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.15	-- Base value for how much of currently used equipment the AI will at least strive to have in stock

NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.60	-- Minimum strength for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.75		-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.50	
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.25		
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.40
NDefines.NAI.ORG_UNIT_WEAK = 0.4						-- Organization % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.4						-- Strength (equipment) % for unit to be considered weak

NDefines.NAI.ORG_UNIT_NORMAL = 0.7						-- Organization % for unit to be considered normal
NDefines.NAI.STR_UNIT_NORMAL = 0.7						-- Strength (equipment) % for unit to be considered normal

NDefines.NAI.ORG_UNIT_STRONG = 0.80

NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8				-- reduced from 1.0 ; AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)

NDefines.NAI.MAX_ALLOWED_NAVAL_DANGER = 51				-- AI will ignore naval paths that has danger value of above this threshold while assigning units

NDefines.NAI.FASCISTS_ALLY_DEMOCRACIES = -150
NDefines.NAI.FASCISTS_ALLY_COMMUNISTS = -150
NDefines.NAI.COMMUNISTS_ALLY_FASCISTS = -150
NDefines.NAI.DEMOCRACIES_ALLY_COMMUNISTS = -75
NDefines.NAI.COMMUNISTS_ALLY_DEMOCRACIES = -75

NDefines.NAI.DESPERATE_AI_WEAK_UNIT_STR_LIMIT = 0.1					-- ai will increase number of units assigned to break from desperate situations when units are start falling lower than this str limit
NDefines.NAI.DESPERATE_AI_MIN_ORG_BEFORE_ATTACK = 0.85					-- ai will wait for this much org to attack an enemy prov in desperate situations
NDefines.NAI.DESPERATE_AI_MIN_ORG_BEFORE_MOVE = 0.25					-- ai will wait for this much org to move in desperate situations
NDefines.NAI.DESPERATE_ATTACK_WITHOUT_ORG_WHEN_NO_ORG_GAIN = 175		-- if ai can't regain enough org to attack in this many hours, it will go truly desperate and attack anyway (still has to wait for move org)

NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 300000

NDefines.NAI.DIVISION_DESIGN_WEIGHTS = {							-- Base values used by AI to evaluate value of a stat
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
	-0.5, -- build_cost_ic
}


NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 28				-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)

NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.0				-- Factor for max number of units to assign to naval invasion orders
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0			-- Factor for desired number of units to assign to naval invasion orders
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 0.5				-- Factor for min number of units to assign to naval invasion orders #was 1.0 should reduce low unit number naval invasions


NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 1.5					-- Country must have at least this many times extra PP to get new admirals or army leaders #Was 2.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.7				-- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%) #was 0.5
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 48                  -- if we are in combat for this amount and it goes shitty then try skipping it #was 100



NDefines.NAI.PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0.1	-- Is modified by efficency modifiers.
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 2.0			-- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 2.0		-- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 4					-- Area defense order base importance value (used for determining order of troop selections)


NDefines.NAI.ALLY_SUPPLY_RATIO_FOR_UNIT_PRODUCTION = 0.00		-- supply ratio of ally supply chunks will be added to our own supply chunks (since we will fight around allies as well) modified by produce_unit_for_ally_supply_chunks strat


NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 245					-- This higher the value, the more unpredictable the invasions. Compares to actual map distance in pixels. #BASE WAS 300


NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 1.5		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP #BASE WAS 2.0	

NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 0.9                            -- scale how stupid ai will act on fronts. 0 is potato #BASE WAS 0.7

NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 35	-- if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front

NDefines.NSupply.INFRA_TO_SUPPLY = 0.5  -- 0.3
NDefines.NSupply.VP_TO_SUPPLY_BASE = 0.1 --0.2
NDefines.NSupply.VP_TO_SUPPLY_BONUS_CONVERSION = 0.06 --0.05

NDefines.NSupply.CAPITAL_SUPPLY_BASE = 5.0 -- 5.0
NDefines.NSupply.CAPITAL_SUPPLY_CIVILIAN_FACTORIES = 0.5 -- 0.3
NDefines.NSupply.CAPITAL_SUPPLY_MILITARY_FACTORIES = 0.7 -- 0.6
NDefines.NSupply.CAPITAL_SUPPLY_DOCKYARDS = 0.6 -- 0.4

NDefines.NSupply.CAPITAL_INITIAL_SUPPLY_FLOW = 10.0 -- 5.0
NDefines.NSupply.CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.5 -- 0.5
NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.8 -- 1.2
NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 4.0 -- 2.8
NDefines.NSupply.NODE_STARTING_PENALTY_PER_PROVINCE = 0.50 -- 0.50
NDefines.NSupply.NODE_ADDED_PENALTY_PER_PROVINCE = 1.0 -- 0.70
NDefines.NSupply.NAVAL_BASE_INITIAL_SUPPLY_FLOW = 4.0 -- 3.5
NDefines.NSupply.NAVAL_BASE_STARTING_PENALTY_PER_PROVINCE = 0.8 -- 0.8
NDefines.NSupply.NAVAL_BASE_ADDED_PENALTY_PER_PROVINCE = 1.5 --1.0

NDefines.NSupply.FLOATING_HARBOR_BASE_SUPPLY = 30 -- 15
NDefines.NSupply.FLOATING_HARBOR_BASE_DURATION = 60 -- 21
NDefines.NSupply.FLOATING_HARBOR_INITIAL_SUPPLY_FLOW = 13 -- 2.6
NDefines.NSupply.FLOATING_HARBOR_STARTING_PENALTY_PER_PROVINCE = 1.6 -- 0.8
NDefines.NSupply.FLOATING_HARBOR_ADDED_PENALTY_PER_PROVINCE = 5 -- 0.8


NDefines.NSupply.SUPPLY_FLOW_DROP_REDUCTION_AT_MAX_INFRA = 0.60 -- 0.30

NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_BONUS = 4.0 -- 2.2


NDefines.NSupply.RAILWAY_BASE_FLOW = 10.0 -- 10.0
NDefines.NSupply.RAILWAY_FLOW_PER_LEVEL = 10 --5.0
NDefines.NSupply.RAILWAY_FLOW_PENALTY_PER_DAMAGED = 10 -- 5.0


NDefines.NSupply.NODE_FLOW_BONUS_PER_RAIL_LEVEL = 0.8 -- 0.34


NDefines.NSupply.NAVAL_FLOW_PER_LEVEL = 15.0 -- 15.0
NDefines.NSupply.NAVAL_FLOW_PER_LEVEL = 5.0 --5.0


NDefines.NSupply.SUPPLY_PATH_MAX_DISTANCE = 15 --15
NDefines.NSupply.RAILWAY_DISTANCE_FACTOR_FOR_REINFORCEMENT_SPEED = 0.1 --0.3
NDefines.NSupply.SUPPLY_DISRUPTION_DAILY_RECOVERY = 3.0


NDefines.NMilitary.SUPPLY_GRACE = 120 -- 72

NDefines.NBuildings.SUPPLY_PORT_LEVEL_THROUGHPUT = 3 -- 3

NDefines.NNavy.SUPPLY_NEED_FACTOR = 3 -- 4
NDefines.NAir.SUPPLY_NEED_FACTOR = 0.15 -- 0.28

NAI = {
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
		STARTING_COMMAND_POWER = 10.0,					-- starting command power for every country
		GIE_EXILE_ARMY_LEADER_START_LEVEL = 3,	--Starting level for exile leader
	},	

}


