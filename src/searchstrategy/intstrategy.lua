module(..., package.seeall)

IntStrategy = {}

-- This will get divided into draw_parameter and draw_template
--function IntStrategy:generate(seed)
--   math.randomseed(seed)
--   return math.random(-2^31, 2^31 - 1)
--end

function IntStrategy:draw_parameter(seed)
   return 0.5 -- TODO: stop ignoring this
end

function IntStrategy:draw_template(seed, parameter)
   math.randomseed(seed)
   return math.random(-2^31, 2^31 - 1)
end

-- The IR for ints consists of ints.
function IntStrategy:reify(template)
   return template
end

function IntStrategy:shrink()
   return {}
end
