local igo = Game.start_up
Game.start_up = function(self)
    local ret = igo(self)
    return ret
end

local _o_gsr = Game.start_run
function Game:start_run(args)
    local ret = _o_gsr(self, args)
    return ret
end