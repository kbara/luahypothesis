module(...,package.seeall)

-- TODO: initialize this better
function init_random()
   math.randomseed(os.time())
end

function find(strategy, predicate)
   local foundval
   for i=1,10 do
      local seed = math.random()
      local t = strategy:generate(seed)
      if predicate(t) then
         foundval = t
         break
      end
   end
   if foundval then
      return foundval
   else
      error("Value not found")
   end
end

