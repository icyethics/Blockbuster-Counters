return {
    descriptions = {
        Counter = {
            -- Score counters
            counter_mult = {
                name = "Mult Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gives {C:mult}+#1#{} Mult",
                    "per Counter",
                }
            },
            counter_chip = {
                name = "Mult Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gives {C:chips}+#1#{} Chips",
                    "per Counter",
                }
            },
            counter_xmult = {
                name = "xMult Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gives {X:mult,C:white}x#1#{} Mult",
                    "per Counter",
                }
            },

            -- Beneficial Counters
            counter_retrigger = {
                name = "Retrigger Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Retrigger {C:attention}#1#{} time",
                    "per Counter"
                }
            },
            counter_money = {
                name = "Money Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Gain {C:money}$#1#{}",
                    "per Counter"
                }
            },
            counter_investment = {
                name = "Investment Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Lose $1 per Counter applied",
                    "Gain {C:money}$#1#{}",
                    "per Counter"
                }
            },

            -- Detrimental Counters
            counter_poison = {
                name = "Poison Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Reduce {C:chips}Chips{} & {C:mult}Mult",
                    "by {C:attention}#1#%{} per Counter"
                }
            },
            counter_stun = {
                name = "Stun Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    "{C:attention}after hand is played",
                    " ",
                    "Debuffed while this has",
                    "any counters"
                }
            },
            counter_debt = {
                name = "Debt Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Lose {C:money}$#1#{}",
                    "per Counter"
                }
            },

            -- Status Counters
            counter_burn = {
                name = "Burn Counter",
                text = {
                    "{C:attention}Ticks Up 1",
                    " ",
                    "Has a {C:green}1 in 10{}",
                    "chance to {C:red}self-destruct"
                }
            },
            counter_frost = {
                name = "Frost Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Halves given score",
                    "while this has any",
                    "Counters"
                }
            },
            counter_paralysis = {
                name = "Paralysis Counter",
                text = {
                    "{C:attention}Ticks Down 1",
                    " ",
                    "Has a {C:green}1 in 10{} chance",
                    "to not trigger",
                    "per Counter"
                }
            },
            counter_sleep = {
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
            counter_drowsy = {
                name = "Drowsy Counter",
                text = {
                    "{C:attention}Ticks Up 1",
                    " ",
                    "{C:green}1 in 10{} chance per Counter",
                    "to convert into",
                    "Sleep counters"
                }
            }
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