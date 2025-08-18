BlockbusterCounters.Counter {
    key = "retrigger_counter",
    order = 4,
    atlas = 'blockbuster_counters',
    config = {
        retriggers = 1,
        cap = 9,
    },
    pos = {x = 0, y = 0},
    calculate = function(self, card, context)
        if card.ability.set ~= 'Joker' 
        and context.repetition then
            local _retriggers = card.counter_config.counter_num * self.config.retriggers
            card:increment_counter(-1)

            return {
                message = localize("k_again_ex"),
                repetitions = _retriggers
            }

        elseif context.retrigger_joker_check and 
        context.other_card and
        context.other_card ~= self then
            
            
            local _retriggers = card.counter_config.counter_num * self.config.retriggers
            card:increment_counter(-1)
            -- if G.STATE == G.STATES.HAND_PLAYED then
            --     context.other_card.ability.kino_retrigger_counters_triggered = true
            -- else
            --     context.other_card.ability.kino_numcounters = context.other_card.ability.kino_numcounters - 1
            -- end
            
            return {
                message = localize("k_again_ex"),
                repetitions = _retriggers
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.retriggers
            }
        }
    end,
    increment = function(self, card, number)
    end,
    add_counter = function(self, card, number)
    end,
    remove_counter = function(self, card)
    end,
}

BlockbusterCounters.Counter {
    key = "money_counter",
    order = 5,
    atlas = 'blockbuster_counters',
    pos = {x = 1, y = 0},
    config = {
        money = 1,
        cap = 9,
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.money
            }
        }
    end,
    calculate = function(self, card, context)
        if context.main_scoring then
            card:increment_counter(-1)
            return {
                dollars = card.counter_config.counter_num + self.config.money
            }
        end
    end,
    increment = function(self, card, number)
    end,
    add_counter = function(self, card, number)
    end,
    remove_counter = function(self, card)
    end,
}