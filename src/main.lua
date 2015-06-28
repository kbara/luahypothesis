#!/usr/bin/env luajit

local core = require("core")
local strategy = require("searchstrategy.intstrategy")

function main()
   core.init_random()
   local function predicate(x) return math.floor(x) % 2 == 0 end
   local v = core.find(strategy.IntStrategy, predicate)
   print(v)
end

main()
