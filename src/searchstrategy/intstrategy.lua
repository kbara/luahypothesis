module(..., package.seeall)

IntStrategy = {}

-- This will get divided into draw_parameter and draw_template
function IntStrategy:generate()
   return math.random(-2^31, 2^31 - 1)
end

function IntStrategy:shrink()
   return {}
end
