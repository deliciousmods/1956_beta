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
NDefines.NAir.AIR_WING_XP_LOSS_WHEN_KILLED = 200
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.015					-- Global speed multiplier for airplanes (affects fe.transferring to another base)
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 200					-- Max stats
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 1500					-- Used to balance the damage done while bombing.
NDefines.NAir.COMBAT_STAT_IMPORTANCE_SPEED = 1.5
NDefines.NAir.COMBAT_MULTIPLANE_CAP = 4.0
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 2.0		-- Chance to hit a plane in airbase when it is bombed.
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 2.0
NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.9
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.1
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.AIR_WING_XP_LOSS_REDUCTION_OVER_FRIENDLY_TERRITORY_FACTOR = 0.7
NDefines.NCountry.BASE_RESEARCH_SLOTS = 3
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 1 				-- ai will use at most this ratio of affordable fuel for naval training
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 1
NDefines.NTechnology.BASE_TECH_COST = 75
NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 6		-- Base year ahead penalty

NEW_COMMANDER_RANDOM_PERSONALITY_TRAIT_CHANCES = {  -- chances to gain a personality trait for new generals
	0.80, -- 50% for first trait
	0.40,  -- 15% for second trait after that
	0.05  --
}

NCountry = {
	BASE_MOBILIZATION_SPEED = 0.015, -- from 0.01 to 0.015
}

-- QoL improvement:
--------------------------------------------------------------------------------------------------------------
-- GAMEPLAY
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.UNIT_TRANSFER_SPOTTING_SPEED_MULT = 1.0 -- 5.0						-- spotting speed mult against unit transfers
NDefines.NNavy.UNIT_TRANSFER_DETECTION_CHANCE_BASE = 4.17 --25.02						-- unit transfer and naval invasion base chance detection percentage (if this fails no detection is done on that tick)
NDefines.NNavy.BASE_SPOTTING_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 0.35 --10.0	-- same as BASE_SPOTTING_EFFECT_FOR_INITIAL_CONVOY_SPOTTING but for naval transfer convoys
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 1.20 --20.0 -- same as SPOTTING_SPEED_EFFECT_FOR_INITIAL_CONVOY_SPOTTING but for naval transfer convoys
