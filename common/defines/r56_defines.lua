NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048
NDefines.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 8196
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 24000

NDefines.NMilitary.TRAINING_MAX_LEVEL = 10
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 1000			--Max army experience a country can store
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 1000			--Max navy experience a country can store
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 1000				--Max air experience a country can store
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 5
NDefines.NMilitary.UNIT_EXP_LEVELS = {0.02,	0.04, 0.06,	0.08, 0.1, 0.14, 0.18, 0.22, 0.26, 0.3, 0.39, 0.48, 0.57, 0.66, 0.75, 0.78, 0.81, 0.84, 0.87, 0.9}
NDefines.NMilitary.EXPERIENCE_COMBAT_FACTOR = 0.05
NDefines.NMilitary.ARMY_EXP_BASE_LEVEL = 5

NDefines.NAir.AIR_WING_XP_LEVELS = {20, 40, 60, 80, 100, 140, 180, 220, 260, 300, 390, 480, 570, 660, 750, 780, 810, 840, 870, 900}
NDefines.NAir.AIR_WING_XP_TRAINING_MAX = 300.0
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.01					-- Global speed multiplier for airplanes (affects fe.transferring to another base)
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 200					-- Max stats
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 1500					-- Used to balance the damage done while bombing.
NDefines.NAir.COMBAT_STAT_IMPORTANCE_SPEED = 1.5            
NDefines.NAir.COMBAT_MULTIPLANE_CAP = 4.0
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 1.5		-- Chance to hit a plane in airbase when it is bombed.
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 1.0
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.75
NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.8
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.1
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.AIR_COMBAT_FINAL_DAMAGE_SCALE = 0.030

NDefines.NAir.AIR_WING_XP_LOSS_REDUCTION_OVER_FRIENDLY_TERRITORY_FACTOR = 0.7

NEW_COMMANDER_RANDOM_PERSONALITY_TRAIT_CHANCES = {  -- chances to gain a personality trait for new generals
	0.80, -- 50% for first trait
	0.40,  -- 15% for second trait after that
	0.05  --
}

-- QoL improvement:
--------------------------------------------------------------------------------------------------------------
-- GAMEPLAY
--------------------------------------------------------------------------------------------------------------
	
NDefines.NCountry.SUPPLY_PATH_MAX_DISTANCE = 8 						-- When supply route reach more than X nodes, the manpower+equipment delivery speed reach 100% penalty.
NDefines.NCountry.REINFORCEMENT_DELIVERY_SPEED_MIN = 0.5 			-- The distance from the supply region to capital should affect the speed only a little bit. Main factor for penalty is overcrowded areas, and not the route length.
NDefines.NCountry.REINFORCEMENT_EQUIPMENT_DELIVERY_SPEED = 0.012 	-- Modifier for army equipment reinforcement speed
NDefines.NCountry.REINFORCEMENT_MANPOWER_DELIVERY_SPEED = 80 		-- Modifier for army manpower reinforcement delivery speed (travel time)

NDefines.NMilitary.DIG_IN_FACTOR = 0.01 -- 0.02

NDefines.NNavy.UNIT_TRANSFER_SPOTTING_SPEED_MULT = 1.0 -- 5.0						-- spotting speed mult against unit transfers
NDefines.NNavy.UNIT_TRANSFER_DETECTION_CHANCE_BASE = 4.17 --25.02						-- unit transfer and naval invasion base chance detection percentage (if this fails no detection is done on that tick)
NDefines.NNavy.BASE_SPOTTING_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 0.35 --10.0	-- same as BASE_SPOTTING_EFFECT_FOR_INITIAL_CONVOY_SPOTTING but for naval transfer convoys
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 1.20 --20.0 -- same as SPOTTING_SPEED_EFFECT_FOR_INITIAL_CONVOY_SPOTTING but for naval transfer convoys


--------------------------------------------------------------------------------------------------------------
-- DESIGNS
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DIVISION_UPGRADE_MIN_XP = 5							                -- Minimum XP before attempting to upgrade a division template.
NDefines.NAI.DIVISION_CREATE_MIN_XP = 400 --100							            -- Minimum XP before attempting to create a fresh new division template.
NDefines.NAI.VARIANT_UPGRADE_MIN_XP = 50 --50					                    -- Minimum XP before attempting to create a new variant.
NDefines.NAI.UPGRADE_XP_RUSH_UPDATE = 5 --150								        -- If XP is above this on the daily tick the AI will attempt to spend it
NDefines.NAI.DIVISION_DESIGN_COMBAT_WIDTH_TARGET_WEIGHT = -10000 -- -200	        -- This score is reduced the farther the width is from the target width (if set)
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.25 --0.1
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 365 --180 --50                           -- Ai will avoid upgrading units in the field to new templates if it takes longer than this to fullfill their equipment need
--------------------------------------------------------------------------------------------------------------
-- DIVISION PRODUCTION
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2 				-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during war time
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1     		-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during peace time
NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2			-- deployment will try to buffer a ratio of manpower (for reinforcements) during war time
NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1		-- deployment will try to buffer a ratio of manpower (for reinforcements) during peace time
NDefines.NAI.MANPOWER_RATIO_REQUIRED_TO_PRIO_MOBILIZATION_LAW = 0.4		-- percentage of manpower in field is desired to be buffered for AI when it has upcoming wars or already at war. if it has less manpower, it will prio manpower laws
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.9 --0.95		                        -- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.25 --0.9 --0.25		                        -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9 --0.95	                        -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.85 --0.9		                        -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.8 --0.9                               -- ai will not start to train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.7 --0.8                                -- ai will not train if equipment drops below this level
--------------------------------------------------------------------------------------------------------------
-- EQUIPMENT PRODUCTION
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.5 -- 0.25	-- Base value for how much of currently used equipment the AI will at least strive to have in stock
--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer 
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
--------------------------------------------------------------------------------------------------------------
-- LAND AI
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PLAN_EXECUTE_RUSH = -10
NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.0 					                    -- The lower this number  the longer the AI will hold the line before sending them to the fallback line
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 24                                 	-- if we are in combat for this amount and it goes shitty then try skipping it
NDefines.NAI.PLAN_MOVE_MIN_ORG_TO_ENEMY_PROVINCE = 20.0						-- Minimum organization a unit must have to consider moving into an enemy province (not attack move)
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65	
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5		
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5	
NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65 --0.80	0.60		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.ORG_UNIT_STRONG = 0.75												-- Organization % for unit to be considered strong
NDefines.NAI.STR_UNIT_STRONG = 0.75												-- Strength (equipment) % for unit to be considered strong
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65
NDefines.NAI.ORG_UNIT_NORMAL = 0.75 --6												-- Organization % for unit to be considered normal
NDefines.NAI.STR_UNIT_NORMAL = 0.75 --6												-- Strength (equipment) % for unit to be considered normal
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.5 --0.50		0.65		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.ORG_UNIT_WEAK = 0.45 --0.45												-- Organization % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.4 --0.45												-- Strength (equipment) % for unit to be considered weak
NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.5				            -- % or more average plan preparation before executing
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.5			                -- If less than this fraction of units on a front is moving  AI sees it as ready for action
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1		                    -- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 		                -- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 5000					                -- A country with less provinces than this will not draw fallback plans  but rather station their troops along the front
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.40 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.05 -- maximum ratio of screens forces to be used in mine sweeping
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.05 -- maximum ratio of screens forces to be used in mine laying
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 1 				-- ai will use at most this ratio of affordable fuel for naval training
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 1
NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 1.0 					-- ai will not train a taskforce if fully trained ships are above this ratio
NDefines.NAI.MAX_DISTANCE_NALAV_INVASION = 300.0								-- AI is extremely unwilling to plan naval invasions above this naval distance limit.
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1000								-- If the enemy has a navy at least these many times stronger that the own, don't bother invading
							-- AI will generally attempt to merge fleets into this size but as a soft limit.
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 12								-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.MAX_INVASION_SIZE = 12
NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 300									-- This higher the value the more unpredictable the invasions. Compares to actual map distance in pixels.
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 10 				-- optimum sub count for sub taskforces
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 3.5					-- screens to capital/carrier count in carrier & capital taskforces


NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	3800, -- PATROL		
	1000, -- STRIKE FORCE 
	1500, -- CONVOY RAIDING
	1000, -- CONVOY ESCORT
	-1, -- MINES PLANTING	
	300, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	1000, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	1.5, -- PATROL		
	6, -- STRIKE FORCE 
	1.5, -- CONVOY RAIDING
	4, -- CONVOY ESCORT
	2, -- MINES PLANTING
	2, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	10, -- NAVAL INVASION SUPPORT
}

--------------------------------------------------------------------------------------------------------------
-- AIR AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 3				-- in additiona to total deck size of carriers, we want at list this ratio to buffer it
NDefines.NAI.AIR_WING_REINFORCEMENT_LIMIT = 400
NDefines.NAI.NAVAL_AIR_SUPERIORITY_IMPORTANCE = 1.0                             -- [0.10] -- Strategic importance of air superiority ( amount of enemy planes in area )
NDefines.NAI.NAVAL_SHIP_IN_PORT_AIR_IMPORTANCE = 20.0                             -- [6.0]  -- Naval ship in the port air importance
NDefines.NAI.NAVAL_COMBAT_AIR_IMPORTANCE = 500.0                                     -- [12.0] -- Naval combat air importance
NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 40                                   -- [20]   -- Amount of bombers requested per enemy ship
NDefines.NAI.PORT_STRIKE_PLANES_PER_SHIP = 20                                    -- [10]   -- Amount of bombers request per enemy ship in the port
NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 100                           -- [50]   -- Strategic importance of civil factories
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 120                        -- [70]   -- Strategic importance of military factories
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 80                            -- [30]   -- Strategic importance of naval factories
NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_PLANE = 0.1       -- [1.0]  -- Amount of air superiority planes requested per enemy plane
NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 2         -- [4]    -- Limit of CAS wings requested by enemy armies
NDefines.NAI.LAND_COMBAT_CAS_PER_ENEMY_ARMY = 10        -- [1.0]  -- str bombing total importance scale (every str bombing score get's multiplied by it)
NDefines.NAI.STR_BOMB_MIN_ENEMY_FIGHTERS_IN_AREA = 400  -- If amount of enemy fighters is higher than this mission won't perform

