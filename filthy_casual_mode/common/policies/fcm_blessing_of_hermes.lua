fcm_blessing_of_hermes = {

	potential = {
		is_ai = no
	}

	allow = {
		is_ai = no
	}

	option = {
		name = "policy_fcm_option_disabled"

		policy_flags = {
		}

		prerequisites = {
		}

		modifier = {
		}

		AI_weight = {
			weight = 0
		}
	}

	option = {
		name = "policy_fcm_blessing_of_hermes_tier_i"

		policy_flags = {
		}

		prerequisites = {
		}

		modifier = {
            ship_ftl_jumpdrive_range_mult = 0.5
            ship_interstellar_speed_mult = 0.5
            ship_winddown_mult = -0.5
            ship_windup_mult = -0.5
		}

		AI_weight = {
			weight = 0
		}
    }

    option = {
		name = "policy_fcm_blessing_of_hermes_tier_ii"

		policy_flags = {
		}

		prerequisites = {
		}

		modifier = {
            ship_ftl_jumpdrive_range_mult = 0.75
            ship_interstellar_speed_mult = 0.75
            ship_winddown_mult = -0.75
            ship_windup_mult = -0.75
		}

		AI_weight = {
			weight = 0
		}
    }

    option = {
		name = "policy_fcm_blessing_of_hermes_tier_iii"

		policy_flags = {
		}

		prerequisites = {
		}

		modifier = {
            ship_ftl_jumpdrive_range_mult = 1
            ship_interstellar_speed_mult = 1
            ship_winddown_mult = -1
            ship_windup_mult = -1
		}

		AI_weight = {
			weight = 0
		}
    }

    option = {
		name = "policy_fcm_blessing_of_hermes_tier_iv"

		policy_flags = {
		}

		prerequisites = {
		}

		modifier = {
            ship_ftl_jumpdrive_range_mult = 1.5
            ship_interstellar_speed_mult = 1.5
            ship_winddown_mult = -1.5
            ship_windup_mult = -1.5
		}

		AI_weight = {
			weight = 0
		}
	}
}
