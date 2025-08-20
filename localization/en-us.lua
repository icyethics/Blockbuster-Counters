return {
    descriptions = {
        Counter = {

            -- Score counters
            bbcount_mult_counter = {
                name = "Mult Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gives {C:mult}+#1#{} Mult",
                    "per Counter",
                }
            },
            bbcount_chip_counter = {
                name = "Mult Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gives {C:chips}+#1#{} Chips",
                    "per Counter",
                }
            },
            bbcount_xmult_counter = {
                name = "xMult Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gives {X:mult,C:white}x#1#{} Mult",
                    "per Counter",
                }
            },

            -- Beneficial Counters
            bbcount_retrigger_counter = {
                name = "Retrigger Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Retrigger {C:attention}#1#{} time",
                    "per Counter"
                }
            },
            counter_bbcount_retrigger_counter = {
                name = "Retrigger Counter (Yes mod / yes class)",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Retrigger {C:attention}#1#{} time",
                    "per Counter"
                }
            },
            retrigger_counter = {
                name = "Retrigger Counter (No mod / no class)",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Retrigger {C:attention}#1#{} time",
                    "per Counter"
                }
            },
            counter_retrigger_counter = {
                name = "Retrigger Counter (No mod / yes class)",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Retrigger {C:attention}#1#{} time",
                    "per Counter"
                }
            },
            bbcount_money_counter = {
                name = "Money Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gain {C:money}$#1#{}",
                    "per Counter"
                }
            },

            -- Detrimental Counters
            bbcount_stun_counter = {
                name = "Stun Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    "{C:attention}after hand is played",
                    " ",
                    "Debuffed while this has",
                    "any counters"
                }
            },

            -- Status Counters
            bbcount_burn_counter = {
                name = "Burn Counter",
                text = {
                    "{C:attention}Ticks Up 1",
                    " ",
                    "Has a {C:green}1 in 10{}",
                    "chance to {C:red}self-destruct"
                }
            },
            bbcount_frost_counter = {
                name = "Frost Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Halves given score",
                    "while this has any",
                    "Counters"
                }
            },
            bbcount_paralysis_counter = {
                name = "Paralysis Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Has a {C:green}1 in 10{} chance",
                    "to not trigger",
                    "per Counter"
                }
            },
            bbcount_sleep_counter = {
                name = "Sleep Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    "{C:attention}1 in Total Counters (#1#) chance",
                    "to clear all Counters",
                    " ",
                    "Debuffed while this",
                    "has any counters",
    
                }
            },
            bbcount_drowsy_counter = {
                name = "Drowsy Counter",
                text = {
                    "{C:attention}Ticks Up 1",
                    " ",
                    "{C:green}1 in 10{} chance per Counter",
                    "to convert into",
                    "Sleep counters"
                }
            }

            -- Score Counters
        }
    },
    misc = {
        dictionary = {
            bb_counter_tooltip = {
                "Jokers and playing cards can have",
                "only one type of counter",
                "Counters decrease by 1 when they",
                "are triggered"
            },
            bbcount_counter = "Counter",
            bb_paralysis = "Paralyzed!"
        },
    }
}