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
NDefines.NAir.AIR_WING_XP_TRAINING_MAX = 300.0 						--Experience needed to progress to the next level			
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.005					-- Global speed multiplier for airplanes (affects fe.transferring to another base)
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 150					-- Max stats
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 150
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 1500					-- Used to balance the damage done while bombing.
NDefines.NAir.COMBAT_STAT_IMPORTANCE_SPEED = 1.5            -- air superiority scale = superiority/(pixels*this)
NDefines.NAir.COMBAT_MULTIPLANE_CAP = 4.0
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 1.5		-- Chance to hit a plane in airbase when it is bombed.
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 1.0
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.75
	
NEW_COMMANDER_RANDOM_PERSONALITY_TRAIT_CHANCES = {  -- chances to gain a personality trait for new generals
	0.80, -- 50% for first trait
	0.40,  -- 15% for second trait after that
	0.05  --  
}
