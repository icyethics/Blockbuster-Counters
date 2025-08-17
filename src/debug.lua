local counters = nil
local timesused = 0
function GetCounters()
    if counters then
        return counters
    end

    counters = {"None"}
    for i, v in pairs(G.P_COUNTERS) do
        counters[v.order + 1] = i
    end

    return counters
end

SMODS.Keybind({
    key_pressed = "n",
    action = function(self)
        print("testkey pressed")
        if G and G.CONTROLLER and G.CONTROLLER.hovering.target and G.CONTROLLER.hovering.target:is(Card) then
            local _card = G.CONTROLLER.hovering.target

            for _i, _counter in ipairs(GetCounters()) do
                if (_card.counter or "None") == _counter then
                    local _next = _i + 1
                    if _next > #counters then
                        _next = 1
                    end

                    if _next == 1 then
                        print("next was 1")
                        _card:set_counter(nil, 0)
                    else
                        print("next was higher than 1")
                        print(counters[_next])
                        timesused = timesused + 1
                        _card:set_counter(counters[_next], timesused)
                    end
                    break
                end
            end
        end

    end
})

