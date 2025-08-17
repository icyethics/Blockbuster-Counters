BlockbusterCounters.Counter {
    key = "mult_counter",
    order = 1,
    atlas = 'blockbuster_counters',
    config = {
        mult = 1
    },
    pos = {x = 0, y = 0},
    pos_pcard = {x = 0, y = 1},
    calculate = function(self, card, context)
        if context.main_scoring then
            card:increment_counter(-1)
            return {
                mult = card.counter_config.counter_num + 1
            }
        end
    end,
    badge_colour = HEX('aa743f'),
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.mult
            }
        }
    end,
    increment = function(self, card, number)
        print("incrementing counters by " .. number .. " ticks")
    end,
    add_counter = function(self, card, number)
        print("counter was added with " .. number .. " of counters")
    end,
    remove_counter = function(self, card)
        print("oh no, I'm being removed")
    end,
}

BlockbusterCounters.Counter {
    key = "test_counter_2",
    order = 2,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 1, y = 0},
}

BlockbusterCounters.Counter {
    key = "test_counter_3",
    order = 3,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 2, y = 0},
}

BlockbusterCounters.Counter {
    key = "test_counter_4",
    order = 4,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 3, y = 0},
}

BlockbusterCounters.Counter {
    key = "test_counter_5",
    order = 5,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 4, y = 0},
}

BlockbusterCounters.Counter {
    key = "test_counter_6",
    order = 6,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 5, y = 0},
}

BlockbusterCounters.Counter {
    key = "test_counter_7",
    order = 7,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 6, y = 0},
}

BlockbusterCounters.Counter {
    key = "test_counter_8",
    order = 8,
    atlas = 'blockbuster_counters',
    config = {

    },
    pos = {x = 7, y = 0},
}