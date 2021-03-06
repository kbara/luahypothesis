module(...,package.seeall)

-- TODO: initialize this better
function init_random()
   math.randomseed(os.time())
end

function find(strategy, predicate)
   local foundval
   for i=1,10 do
      local seed = math.random()
      local param = strategy:draw_parameter(seed)
      local template = strategy:draw_template(seed, param)
      local val = strategy:reify(template)
      if predicate(val) then
         foundval = val
         break
      end
   end
   if foundval then
      return foundval
   else
      error("Value not found")
   end
end

