BlockbusterCounters.Counter {
    key = "mult_counter",
    order = 1,
    atlas = 'blockbuster_counters',
    config = {
        mult = 1
    },
    pos = {x = 0, y = 2},
    calculate = function(self, card, context)
        if context.main_scoring or context.joker_main then
            card:increment_counter(-1)
            return {
                mult = card.counter_config.counter_num + self.config.mult
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.mult
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
    key = "chip_counter",
    order = 2,
    atlas = 'blockbuster_counters',
    config = {
        chips = 10
    },
    pos = {x = 1, y = 2},
    calculate = function(self, card, context)
        if context.main_scoring or context.joker_main  then
            card:increment_counter(-1)
            return {
                chips = card.counter_config.counter_num + self.config.chips
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.chips
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
    key = "xmult_counter",
    order = 3,
    atlas = 'blockbuster_counters',
    config = {
        xmult = 0.1
    },
    pos = {x = 2, y = 2},
    calculate = function(self, card, context)
        if context.main_scoring or context.joker_main  then
            card:increment_counter(-1)
            return {
                x_mult = 1 + (card.counter_config.counter_num * 0.1)
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.xmult
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
